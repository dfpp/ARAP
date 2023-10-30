from androguard.core import androconf
#from androguard.util import read, get_certificate_name_string
from androguard.util import get_certificate_name_string
from androguard.util import readFile as read

from androguard.core.bytecodes.axml import ARSCParser, AXMLPrinter, ARSCResTableConfig, AXMLParser, format_value, START_TAG, END_TAG, TEXT, END_DOCUMENT

import io
from zlib import crc32
import os
import re
import binascii
import zipfile
import logging
from struct import unpack
import hashlib
import warnings

import lxml.sax
from xml.dom.pulldom import SAX2DOM

# Used for reading Certificates
from asn1crypto import cms, x509, keys

NS_ANDROID_URI = 'http://schemas.android.com/apk/res/android'
NS_ANDROID = '{{{}}}'.format(NS_ANDROID_URI)  # Namespace as used by etree

log = logging.getLogger("androguard.apk")


def parse_lxml_dom(tree):
    handler = SAX2DOM()
    lxml.sax.saxify(tree, handler)
    return handler.document


class Error(Exception):
    """Base class for exceptions in this module."""
    pass


class FileNotPresent(Error):
    pass


class BrokenAPKError(Error):
    pass


def _dump_additional_attributes(additional_attributes):
    """ try to parse additional attributes, but ends up to hexdump if the scheme is unknown """

    attributes_raw = io.BytesIO(additional_attributes)
    attributes_hex = binascii.hexlify(additional_attributes)

    if not len(additional_attributes):
        return attributes_hex

    len_attribute, = unpack('<I', attributes_raw.read(4))
    if len_attribute != 8:
        return attributes_hex

    attr_id, = unpack('<I', attributes_raw.read(4))
    if attr_id != APK._APK_SIG_ATTR_V2_STRIPPING_PROTECTION:
        return attributes_hex

    scheme_id, = unpack('<I', attributes_raw.read(4))

    return "stripping protection set, scheme %d" % scheme_id


def _dump_digests_or_signatures(digests_or_sigs):

    infos = ""
    for i,dos in enumerate(digests_or_sigs):

        infos += "\n"
        infos += " [%d]\n" % i
        infos += "  - Signature Id : %s\n" % APK._APK_SIG_ALGO_IDS.get(dos[0], hex(dos[0]))
        infos += "  - Digest: %s" % binascii.hexlify(dos[1])

    return infos


class APKV2SignedData:
    """
    This class holds all data associated with an APK V3 SigningBlock signed data.
    source : https://source.android.com/security/apksigning/v2.html
    """

    def __init__(self):
        self._bytes = None
        self.digests = None
        self.certificates =  None
        self.additional_attributes = None

    def __str__(self):

        certs_infos = ""

        for i,cert in enumerate(self.certificates):
            x509_cert = x509.Certificate.load(cert)

            certs_infos += "\n"
            certs_infos += " [%d]\n" % i
            certs_infos += "  - Issuer: %s\n" % get_certificate_name_string(x509_cert.issuer, short=True)
            certs_infos += "  - Subject: %s\n" % get_certificate_name_string(x509_cert.subject, short=True)
            certs_infos += "  - Serial Number: %s\n" % hex(x509_cert.serial_number)
            certs_infos += "  - Hash Algorithm: %s\n" % x509_cert.hash_algo
            certs_infos += "  - Signature Algorithm: %s\n" % x509_cert.signature_algo
            certs_infos += "  - Valid not before: %s\n" % x509_cert['tbs_certificate']['validity']['not_before'].native
            certs_infos += "  - Valid not after: %s" % x509_cert['tbs_certificate']['validity']['not_after'].native

        return "\n".join([
            'additional_attributes : {}'.format(_dump_additional_attributes(self.additional_attributes)),
            'digests : {}'.format(_dump_digests_or_signatures(self.digests)),
            'certificates : {}'.format(certs_infos),
        ])


class APKV3SignedData(APKV2SignedData):
    """
    This class holds all data associated with an APK V3 SigningBlock signed data.
    source : https://source.android.com/security/apksigning/v3.html
    """

    def __init__(self):
        super().__init__()
        self.minSDK = None
        self.maxSDK = None

    def __str__(self):

        base_str = super().__str__()

        # maxSDK is set to a negative value if there is no upper bound on the sdk targeted
        max_sdk_str = "%d" % self.maxSDK
        if self.maxSDK >= 0x7fffffff:
            max_sdk_str = "0x%x" % self.maxSDK

        return "\n".join([
            'signer minSDK : {:d}'.format(self.minSDK),
            'signer maxSDK : {:s}'.format(max_sdk_str),
            base_str
        ])


class APKV2Signer:
    """
    This class holds all data associated with an APK V2 SigningBlock signer.
    source : https://source.android.com/security/apksigning/v2.html
    """

    def __init__(self):
        self._bytes = None
        self.signed_data = None
        self.signatures = None
        self.public_key = None

    def __str__(self):
        return "\n".join([
            '{:s}'.format(str(self.signed_data)),
            'signatures : {}'.format(_dump_digests_or_signatures(self.signatures)),
            'public key : {}'.format(binascii.hexlify(self.public_key)),
        ])


class APKV3Signer(APKV2Signer):
    """
    This class holds all data associated with an APK V3 SigningBlock signer.
    source : https://source.android.com/security/apksigning/v3.html
    """

    def __init__(self):
        super().__init__()
        self.minSDK = None
        self.maxSDK = None

    def __str__(self):

        base_str = super().__str__()

        # maxSDK is set to a negative value if there is no upper bound on the sdk targeted
        max_sdk_str = "%d" % self.maxSDK
        if self.maxSDK >= 0x7fffffff:
            max_sdk_str = "0x%x" % self.maxSDK

        return "\n".join([
            'signer minSDK : {:d}'.format(self.minSDK),
            'signer maxSDK : {:s}'.format(max_sdk_str),
            base_str
        ])


class APK:
    # Constants in ZipFile
    _PK_END_OF_CENTRAL_DIR = b"\x50\x4b\x05\x06"
    _PK_CENTRAL_DIR = b"\x50\x4b\x01\x02"

    # Constants in the APK Signature Block
    _APK_SIG_MAGIC = b"APK Sig Block 42"
    _APK_SIG_KEY_V2_SIGNATURE = 0x7109871a
    _APK_SIG_KEY_V3_SIGNATURE = 0xf05368c0
    _APK_SIG_ATTR_V2_STRIPPING_PROTECTION = 0xbeeff00d

    _APK_SIG_ALGO_IDS = {
        0x0101 : "RSASSA-PSS with SHA2-256 digest, SHA2-256 MGF1, 32 bytes of salt, trailer: 0xbc",
        0x0102 : "RSASSA-PSS with SHA2-512 digest, SHA2-512 MGF1, 64 bytes of salt, trailer: 0xbc",
        0x0103 : "RSASSA-PKCS1-v1_5 with SHA2-256 digest.", # This is for build systems which require deterministic signatures.
        0x0104 : "RSASSA-PKCS1-v1_5 with SHA2-512 digest.", # This is for build systems which require deterministic signatures.
        0x0201 : "ECDSA with SHA2-256 digest",
        0x0202 : "ECDSA with SHA2-512 digest",
        0x0301 : "DSA with SHA2-256 digest",
    }

    __no_magic = False

    def __init__(self, filename, raw=False, magic_file=None, skip_analysis=False, testzip=False):
        """
        This class can access to all elements in an APK file
        这个类可以访问APK文件中的所有元素

        example::

            APK("myfile.apk")
            APK(read("myfile.apk"), raw=True)

        :param filename: specify the path of the file, or raw data
        :param raw: specify if the filename is a path or raw data (optional)
        :param magic_file: specify the magic file (not used anymore - legacy only)
        :param skip_analysis: Skip the analysis, e.g. no manifest files are read. (default: False)
        :param testzip: Test the APK for integrity, e.g. if the ZIP file is broken. Throw an exception on failure (default False)
        
        :param filename:指定文件或原始数据的路径
        :param raw:指定文件名是路径还是原始数据(可选)
        :param magic_file:指定魔法文件(不再使用-仅遗留)
        :param skip_analysis:跳过分析，例如不读取清单文件。(默认值:False)
        :param testzip:测试APK的完整性，例如，如果ZIP文件被破坏。失败时抛出异常(默认为False)

        :type filename: string
        :type raw: boolean
        :type magic_file: string
        :type skip_analysis: boolean
        :type testzip: boolean


        :输入文件名:字符串
        :原始类型:布尔
        : magic_file类型:字符串
        : skip_analysis类型:布尔
        : testzip类型:布尔
        """
        if magic_file:
            log.warning("You set magic_file but this parameter is actually unused. You should remove it.")
            #您设置了magic_file，但这个参数实际上是未使用的。你应该把它去掉。

        #这些变量将会在运行_apk_analysis()后得到填充
        self.filename = filename


        # {}是一个空字典
        self.xml = {}
        self.axml = {}
        self.arsc = {}

        self.package = ""
        self.androidversion = {}
        self.permissions = []
        self.uses_permissions = []
        self.declared_permissions = {}
        self.valid_apk = False

        self._is_signed_v2 = None
        self._is_signed_v3 = None
        self._v2_blocks = {}
        self._v2_signing_data = None
        self._v3_signing_data = None

        self._files = {}
        self.files_crc32 = {}

        if raw is True:
            self.__raw = bytearray(filename)
            self._sha256 = hashlib.sha256(self.__raw).hexdigest()
            # Set the filename to something sane
            self.filename = "raw_apk_sha256:{}".format(self._sha256)

            self.zip = zipfile.ZipFile(io.BytesIO(self.__raw), mode="r")  #读取apk文件，apk其实就是zip
        else:
            self.__raw = None
            self.zip = zipfile.ZipFile(filename, mode="r")

        if testzip:
            log.info("Testing zip file integrity, this might take a while...")   #测试zip文件的完整性，这可能需要一段时间…
            # Test the zipfile for integrity before continuing.
            # This process might be slow, as the whole file is read.
            # Therefore it is possible to enable it as a separate feature.
            #
            # A short benchmark showed, that testing the zip takes about 10 times longer!
            # e.g. normal zip loading (skip_analysis=True) takes about 0.01s, where
            # testzip takes 0.1s!
            ret = self.zip.testzip()
            if ret is not None:
                # we could print the filename here, but there are zip which are so broken
                # That the filename is either very very long or does not make any sense.
                # Thus we do not do it, the user might find out by using other tools.
                raise BrokenAPKError("The APK is probably broken: testzip returned an error.")  #APK可能坏了:testzip返回一个错误。

        if not skip_analysis:
            self._apk_analysis()  #开始apk分析

    @staticmethod
    def _ns(name):
        """
        return the name including the Android namespace URI  #返回包含Android命名空间URI的名称
        """
        return NS_ANDROID + name

    def _apk_analysis(self):  
        """
        Run analysis on the APK file.  在APK文件上运行分析。

        This method is usually called by __init__ except if skip_analysis is False.  这个方法通常由__init__调用，除非skip_analysis为False。
        It will then parse the AndroidManifest.xml and set all fields in the APK class which can be  
        extracted from the Manifest.
  
        在APK文件上运行分析。
        这个方法通常由__init__调用，除非skip_analysis为False。
        然后它将解析AndroidManifest.xml，并设置APK类中可以从Manifest中提取的所有字段。
        """
        i = "AndroidManifest.xml"
        log.info("Starting analysis on {}".format(i))
        try:
            manifest_data = self.zip.read(i)  #如果找不到xml文件则会报错，因为xml是apk中必备的！
        except KeyError:
            log.warning("Missing AndroidManifest.xml. Is this an APK file?")
        else:
            ap = AXMLPrinter(manifest_data)    #读取XML文件

            if not ap.is_valid():
                log.error("Error while parsing AndroidManifest.xml - is the file valid?")  #解析AndroidManifest.xml时出错-该文件有效吗?
                return

            self.axml[i] = ap  #获取axml对象
            self.xml[i] = self.axml[i].get_xml_obj()  #获取xml对象

            if self.axml[i].is_packed():
                log.warning("XML Seems to be packed, operations on the AndroidManifest.xml might fail.")
                #XML似乎被打包了，在AndroidManifest.xml上的操作可能会失败。  警告，但是继续分析

            if self.xml[i] is not None:
                if self.xml[i].tag != "manifest":
                    log.error("AndroidManifest.xml does not start with a <manifest> tag! Is this a valid APK?")
                    #AndroidManifest.xml不以<manifest>标签开始!</manifest>这是有效的APK吗?
                    return

                self.package = self.get_attribute_value("manifest", "package")
                self.androidversion["Code"] = self.get_attribute_value("manifest", "versionCode")
                self.androidversion["Name"] = self.get_attribute_value("manifest", "versionName")
                permission = list(self.get_all_attribute_value("uses-permission", "name"))
                self.permissions = list(set(self.permissions + permission))

                #获取一系列xml信息，包括包名，版本号，版本名，权限

                for uses_permission in self.find_tags("uses-permission"):
                    self.uses_permissions.append([
                        self.get_value_from_tag(uses_permission, "name"),
                        self._get_permission_maxsdk(uses_permission)
                    ])

                # getting details of the declared permissions  获取声明权限的详细信息
                for d_perm_item in self.find_tags('permission'):
                    d_perm_name = self._get_res_string_value(
                        str(self.get_value_from_tag(d_perm_item, "name")))
                    d_perm_label = self._get_res_string_value(
                        str(self.get_value_from_tag(d_perm_item, "label")))
                    d_perm_description = self._get_res_string_value(
                        str(self.get_value_from_tag(d_perm_item, "description")))
                    d_perm_permissionGroup = self._get_res_string_value(
                        str(self.get_value_from_tag(d_perm_item, "permissionGroup")))
                    d_perm_protectionLevel = self._get_res_string_value(
                        str(self.get_value_from_tag(d_perm_item, "protectionLevel")))

                    d_perm_details = {
                        "label": d_perm_label,
                        "description": d_perm_description,
                        "permissionGroup": d_perm_permissionGroup,
                        "protectionLevel": d_perm_protectionLevel,
                    }
                    self.declared_permissions[d_perm_name] = d_perm_details

                self.valid_apk = True
                log.info("APK file was successfully validated!")
                #APK文件已成功验证!

        self.permission_module = androconf.load_api_specific_resource_module(
            "aosp_permissions", self.get_target_sdk_version())

    def __getstate__(self):
        """
        Function for pickling APK Objects.
        函数用于pickle APK对象。  腌制

        We remove the zip from the Object, as it is not pickable
        And it does not make any sense to pickle it anyways.

        :returns: the picklable APK Object without zip.
        
        我们从Object中删除压缩包，因为它是不可选择的
        而且把它腌起来也没有任何意义。

        :返回:不带zip的可pickle APK对象。
        
        
        
        一、什么是pickle模块？

        什么是持续化模块?

        持续化模块：就是让数据持久化保存。

        pickle模块是Python专用的持久化模块，可以持久化包括自定义类在内的各种数据，比较适合Python本身复杂数据的存贮。

        但是持久化后的字串是不可认读的，并且只能用于Python环境，不能用作与其它语言进行数据交换。

        二、pickle模块的作用

        把 Python 对象直接保存到文件里，而不需要先把它们转化为字符串再保存，也不需要用底层的文件访问操作，
        直接把它们写入到一个二进制文件里。pickle 模块会创建一个 Python 语言专用的二进制格式，
        不需要使用者考虑任何文件细节，它会帮你完成读写对象操作。
        用pickle比你打开文件、转换数据格式并写入这样的操作要节省不少代码行。
        
        """
        # Upon pickling, we need to remove the ZipFile  在酸洗时，我们需要删除ZipFile
        x = self.__dict__
        x['axml'] = str(x['axml'])
        x['xml'] = str(x['xml'])
        del x['zip']

        return x

    def __setstate__(self, state):
        """
        Load a pickled APK Object and restore the state

        We load the zip file back by reading __raw from the Object.

        :param state: pickled state
        
        加载一个pickle的APK对象并恢复状态

        我们通过从Object中读取__raw来加载回zip文件。

        :param state: pickle状态
        
        
        
        
        """
        self.__dict__ = state

        self.zip = zipfile.ZipFile(io.BytesIO(self.get_raw()), mode="r")

    def _get_res_string_value(self, string):
        if not string.startswith('@string/'):
            return string
        string_key = string[9:]

        res_parser = self.get_android_resources()
        if not res_parser:
            return ''
        string_value = ''
        for package_name in res_parser.get_packages_names():
            extracted_values = res_parser.get_string(package_name, string_key)
            if extracted_values:
                string_value = extracted_values[1]
                break
        return string_value

    def _get_permission_maxsdk(self, item):
        maxSdkVersion = None
        try:
            maxSdkVersion = int(self.get_value_from_tag(item, "maxSdkVersion"))
        except ValueError:
            log.warning(self.get_max_sdk_version() + 'is not a valid value for <uses-permission> maxSdkVersion')
        except TypeError:
            pass
        return maxSdkVersion

    def is_valid_APK(self):
        """
        Return true if the APK is valid, false otherwise.
        An APK is seen as valid, if the AndroidManifest.xml could be successful parsed.
        This does not mean that the APK has a valid signature nor that the APK
        can be installed on an Android system.

        :rtype: boolean
        
        如果APK有效则返回true，否则返回false。
        如果AndroidManifest.xml可以被成功解析，则APK被视为有效的。     仅仅通过AndroidManifest.xml是否可以被解析来判断apk的有效性，这显然是不足的，可以优化
        这并不意味着APK具有有效的签名，也不意味着APK可以安装在Android系统上。

: rtype:布尔
        """
        return self.valid_apk

    def get_filename(self):
        """
        Return the filename of the APK

        :rtype: :class:`str`
        
        返回APK的文件名

        : rtype::类:“str”
        """
        return self.filename

    def get_app_name(self):
        """
        Return the appname of the APK

        This name is read from the AndroidManifest.xml
        using the application android:label.
        If no label exists, the android:label of the main activity is used.

        If there is also no main activity label, an empty string is returned.

        :rtype: :class:`str`
        
        返回APK的appname

        这个名称是从AndroidManifest.xml中读取的
        使用应用程序android:label。
        如果不存在标签，则使用主活动的android:标签。

        如果也没有主活动标签，则返回一个空字符串。

        : rtype::类:“str”
        
        """

        app_name = self.get_attribute_value('application', 'label')
        if app_name is None:
            activities = self.get_main_activities()
            main_activity_name = None
            if len(activities) > 0:
                main_activity_name = activities.pop()

            # FIXME: would need to use _format_value inside get_attribute_value for each returned name!
            # For example, as the activity name might be foobar.foo.bar but inside the activity it is only .bar
            app_name = self.get_attribute_value('activity', 'label', name=main_activity_name)

        if app_name is None:
            # No App name set
            # TODO return packagename instead?
            log.warning("It looks like that no app name is set for the main activity!")
            return ""

        if app_name.startswith("@"):
            res_parser = self.get_android_resources()
            if not res_parser:
                # TODO: What should be the correct return value here?
                return app_name

            res_id, package = res_parser.parse_id(app_name)

            # If the package name is the same as the APK package,
            # we should be able to resolve the ID.
            if package and package != self.get_package():
                if package == 'android':
                    # TODO: we can not resolve this, as we lack framework-res.apk
                    # one exception would be when parsing framework-res.apk directly.
                    log.warning("Resource ID with android package name encountered! "
                                "Will not resolve, framework-res.apk would be required.")
                    return app_name
                else:
                    # TODO should look this up, might be in the resources
                    log.warning("Resource ID with Package name '{}' encountered! Will not resolve".format(package))
                    return app_name

            try:
                app_name = res_parser.get_resolved_res_configs(
                    res_id,
                    ARSCResTableConfig.default_config())[0][1]
            except Exception as e:
                log.warning("Exception selecting app name: %s" % e)
        return app_name

    def get_app_icon(self, max_dpi=65536):
        """
        Return the first icon file name, which density is not greater than max_dpi,
        unless exact icon resolution is set in the manifest, in which case
        return the exact file.

        This information is read from the AndroidManifest.xml
        
        返回第一个图标文件名，其密度不大于max_dpi，除非在清单中设置了精确的图标分辨率，
        在这种情况下返回精确的文件。这个信息是从AndroidManifest.xml中读取的

        From https://developer.android.com/guide/practices/screens_support.html
        and https://developer.android.com/ndk/reference/group___configuration.html

        * DEFAULT                             0dpi
        * ldpi (low)                        120dpi
        * mdpi (medium)                     160dpi
        * TV                                213dpi
        * hdpi (high)                       240dpi
        * xhdpi (extra-high)                320dpi
        * xxhdpi (extra-extra-high)         480dpi
        * xxxhdpi (extra-extra-extra-high)  640dpi
        * anydpi                          65534dpi (0xFFFE)
        * nodpi                           65535dpi (0xFFFF)

        There is a difference between nodpi and anydpi:
        nodpi will be used if no other density is specified. Or the density does not match.
        nodpi is the fallback for everything else. If there is a resource that matches the DPI,
        this is used.
        anydpi is also valid for all densities but in this case, anydpi will overrule all other files!
        Therefore anydpi is usually used with vector graphics and with constraints on the API level.
        For example adaptive icons are usually marked as anydpi.

        When it comes now to selecting an icon, there is the following flow:

        1. is there an anydpi icon?
        2. is there an icon for the dpi of the device?
        3. is there a nodpi icon?
        4. (only on very old devices) is there a icon with dpi 0 (the default)

        For more information read here: https://stackoverflow.com/a/34370735/446140

        :rtype: :class:`str`
        """
        main_activity_name = self.get_main_activity()

        app_icon = self.get_attribute_value(
            'activity', 'icon', name=main_activity_name)

        if not app_icon:
            app_icon = self.get_attribute_value('application', 'icon')

        res_parser = self.get_android_resources()
        if not res_parser:
            # Can not do anything below this point to resolve...
            return None

        if not app_icon:
            res_id = res_parser.get_res_id_by_key(self.package, 'mipmap', 'ic_launcher')
            if res_id:
                app_icon = "@%x" % res_id

        if not app_icon:
            res_id = res_parser.get_res_id_by_key(self.package, 'drawable', 'ic_launcher')
            if res_id:
                app_icon = "@%x" % res_id

        if not app_icon:
            # If the icon can not be found, return now
            return None

        if app_icon.startswith("@"):
            app_icon_id = app_icon[1:]
            app_icon_id = app_icon_id.split(':')[-1]
            res_id = int(app_icon_id, 16)
            candidates = res_parser.get_resolved_res_configs(res_id)

            app_icon = None
            current_dpi = -1

            try:
                for config, file_name in candidates:
                    dpi = config.get_density()
                    if current_dpi < dpi <= max_dpi:
                        app_icon = file_name
                        current_dpi = dpi
            except Exception as e:
                log.warning("Exception selecting app icon: %s" % e)

        return app_icon

    def get_package(self):
        """
        Return the name of the package

        This information is read from the AndroidManifest.xml

        :rtype: :class:`str`
        返回包的名称

        这个信息是从AndroidManifest.xml中读取的

        : rtype::类:“str”
        """
        return self.package

    def get_androidversion_code(self):
        """
        Return the android version code

        This information is read from the AndroidManifest.xml

        :rtype: :class:`str`
        
        返回android版本代码

        这个信息是从AndroidManifest.xml中读取的

        : rtype::类:“str”
        """
        return self.androidversion["Code"]

    def get_androidversion_name(self):
        """
        Return the android version name

        This information is read from the AndroidManifest.xml

        :rtype: :class:`str`
        
        返回android版本名称

        这个信息是从AndroidManifest.xml中读取的

        : rtype::类:“str”
        """
        return self.androidversion["Name"]

    def get_files(self):
        """
        Return the file names inside the APK.

        :rtype: a list of :class:`str`
        
        返回APK内的文件名。

        :rtype:一个:class: ' str '的列表
        """
        return self.zip.namelist()

    def _get_file_magic_name(self, buffer):
        """
        Return the filetype guessed for a buffer
        :param buffer: bytes
        :returns: str of filetype
        
        返回为缓冲区猜测的文件类型    用魔术头判断文件的类型
        : param缓冲区字节
        :返回文件类型的:STR
        """
        default = "Unknown"

        # Faster way, test once, return default.
        if self.__no_magic:
            return default

        try:
            # Magic is optional
            import magic
        except ImportError:
            self.__no_magic = True
            log.warning("No Magic library was found on your system.")
            return default
        except TypeError as e:
            self.__no_magic = True
            log.warning("It looks like you have the magic python package installed but not the magic library itself!")
            log.warning("Error from magic library: %s", e)
            log.warning("Please follow the installation instructions at https://github.com/ahupp/python-magic/#installation")
            log.warning("You can also install the 'python-magic-bin' package on Windows and MacOS")
            return default

        try:
            # There are several implementations of magic,
            # unfortunately all called magic
            # We use this one: https://github.com/ahupp/python-magic/
            # You can also use python-magic-bin on Windows or MacOS
            getattr(magic, "MagicException")
        except AttributeError:
            self.__no_magic = True
            log.warning("Not the correct Magic library was found on your "
                        "system. Please install python-magic or python-magic-bin!")
            return default

        try:
            # 1024 byte are usually enough to test the magic
            ftype = magic.from_buffer(buffer[:1024])
        except magic.MagicException as e:
            log.exception("Error getting the magic type: %s", e)
            return default

        if not ftype:
            return default
        else:
            return self._patch_magic(buffer, ftype)

    @property
    def files(self):
        """
        Returns a dictionary of filenames and detected magic type

        :returns: dictionary of files and their mime type
        
        返回一个包含文件名和检测到的魔法类型的字典

        :返回:文件字典及其mime类型
        """
        return self.get_files_types()

    def get_files_types(self):
        """
        Return the files inside the APK with their associated types (by using python-magic)

        At the same time, the CRC32 are calculated for the files.

        :rtype: a dictionnary
        
        返回APK中的文件及其相关类型(通过使用python-magic)

        同时计算了文件的CRC32。

        : rtype dictionnary
        """
        if self._files == {}:
            # Generate File Types / CRC List
            for i in self.get_files():
                buffer = self._get_crc32(i)
                self._files[i] = self._get_file_magic_name(buffer)

        return self._files

    def _patch_magic(self, buffer, orig):
        """
        Overwrite some probably wrong detections by mime libraries

        :param buffer: bytes of the file to detect
        :param orig: guess by mime libary
        :returns: corrected guess
        
        MIME type （现在称为“媒体类型 (media type)”，但有时也是“内容类型 (content type)”）是指示文件类型的字符串，
        与文件一起发送（例如，一个声音文件可能被标记为 audio/ogg ，一个图像文件可能是 image/png ）。
        它与传统 Windows 上的文件扩展名有相同目的。
        
        覆盖mime库可能的错误检测

        :param buffer:要检测的文件字节数
        :param orig:通过mime库猜
        返回:纠正猜测
        """
        if ("Zip" in orig) or ('(JAR)' in orig) and androconf.is_android_raw(buffer) == 'APK':
            return "Android application package file"

        return orig

    def _get_crc32(self, filename):
        """
        Calculates and compares the CRC32 and returns the raw buffer.

        The CRC32 is added to `files_crc32` dictionary, if not present.

        :param filename: filename inside the zipfile
        :rtype: bytes
        
        计算和比较CRC32并返回原始缓冲区。
        如果CRC32不存在，则会添加到`files_CRC32`字典中。
        ：param filename：zip文件内的filename
        ：rtype:字节
        """
        buffer = self.zip.read(filename)
        if filename not in self.files_crc32:
            self.files_crc32[filename] = crc32(buffer)
            if self.files_crc32[filename] != self.zip.getinfo(filename).CRC:
                log.error("File '{}' has different CRC32 after unpacking! "
                          "Declared: {:08x}, Calculated: {:08x}".format(filename,
                                                                        self.zip.getinfo(filename).CRC,
                                                                        self.files_crc32[filename]))
        return buffer

    def get_files_crc32(self):
        """
        Calculates and returns a dictionary of filenames and CRC32

        :returns: dict of filename: CRC32
        
        计算并返回文件名和CRC32的字典
        ：returns：文件名的dict：CRC32
        """
        if self.files_crc32 == {}:
            for i in self.get_files():
                self._get_crc32(i)

        return self.files_crc32

    def get_files_information(self):
        """
        Return the files inside the APK with their associated types and crc32

        :rtype: str, str, int
        
        返回APK中的文件及其关联类型和crc32
        ：rtype：字符串，字符串，整数
        """
        for k in self.get_files():
            yield k, self.get_files_types()[k], self.get_files_crc32()[k]

    def get_raw(self):
        """
        Return raw bytes of the APK

        :rtype: bytes
        
        返回APK的原始字节
        ：rtype:字节
        """

        if self.__raw:
            return self.__raw
        else:
            self.__raw = bytearray(read(self.filename))
            return self.__raw

    def get_file(self, filename):
        """
        Return the raw data of the specified filename
        inside the APK

        :rtype: bytes
        
        返回APK中指定文件名的原始数据 raw data
        ：rtype:字节
        """
        try:
            return self.zip.read(filename)
        except KeyError:
            raise FileNotPresent(filename)

    def get_dex(self):
        """
        Return the raw data of the classes dex file

        This will give you the data of the file called `classes.dex`
        inside the APK. If the APK has multiple DEX files, you need to use :func:`~APK.get_all_dex`.

        :rtype: bytes
        
        
        返回类dex文件的原始数据  raw data
        这将为您提供名为`classes.dex的文件的数据`
        APK内部。如果APK有多个DEX文件，则需要使用：func:`~APK.get_all_dex`。
        ：rtype:字节
        """
        try:
            return self.get_file("classes.dex")
        except FileNotPresent:
            # TODO is this a good idea to return an empty string?  TODO返回空字符串是个好主意吗？
            return b""

    def get_dex_names(self):
        """
        Return the names of all DEX files found in the APK.
        This method only accounts for "offical" dex files, i.e. all files
        in the root directory of the APK named classes.dex or classes[0-9]+.dex

        :rtype: a list of str
        
        
        返回在APK中找到的所有DEX文件的名称。
        此方法仅考虑“official”索引文件，即APK命名类的根目录中的所有文件classes.dex 或者 classes[0-9]+.dex
        ：rtype：str列表
        """
        dexre = re.compile(r"classes(\d*).dex")   #re.compile是python的正则表达式模块
        return filter(lambda x: dexre.match(x), self.get_files())

    def get_all_dex(self):
        """
        Return the raw data of all classes dex files

        :rtype: a generator of bytes
        
        返回所有类dex文件的原始数据  raw data
        ：rtype：字节生成器
        """
        
        for dex_name in self.get_dex_names():
            #print(dex_name)
            yield self.get_file(dex_name)

    def is_multidex(self):
        """
        Test if the APK has multiple DEX files

        :returns: True if multiple dex found, otherwise False
        
        测试APK是否有多个DEX文件
        ：returns：如果找到多个索引，则为True，否则为False
        """
        dexre = re.compile(r"^classes(\d+)?.dex$")
        return len([instance for instance in self.get_files() if dexre.search(instance)]) > 1

    def get_elements(self, tag_name, attribute, with_namespace=True):
        """
        .. deprecated:: 3.3.5
            use :meth:`get_all_attribute_value` instead

        Return elements in xml files which match with the tag name and the specific attribute

        :param str tag_name: a string which specify the tag name
        :param str attribute: a string which specify the attribute
        
        ..已弃用：：3.3.5
        改用：meth:`get_all_attribute_value`
        返回xml文件中与标记名和特定属性匹配的元素
        ：param str tag_name：指定标记名的字符串
        ：param str attribute：指定属性的字符串
        """
        warnings.warn("This method is deprecated since 3.3.5.", DeprecationWarning)
        for i in self.xml:
            if self.xml[i] is None:
                continue
            for item in self.xml[i].findall('.//' + tag_name):
                if with_namespace:
                    value = item.get(self._ns(attribute))
                else:
                    value = item.get(attribute)
                # There might be an attribute without the namespace
                if value:
                    yield self._format_value(value)

    def _format_value(self, value):
        """
        Format a value with packagename, if not already set.
        For example, the name :code:`'.foobar'` will be transformed into :code:`'package.name.foobar'`.

        Names which do not contain any dots are assumed to be packagename-less as well:
        :code:`foobar` will also transform into :code:`package.name.foobar`.

        :param value:
        :returns:
        
        如果尚未设置，请使用packagename格式化值。
        例如，名称：code:`'.foobar“”将转换为：code:`“package.name.foobar”`。
        不包含任何点的名称也被认为是packagename less：
        ：code:`foobar`还将转换为：code:`package.name.foobar'。
        ：param值：
        ：返回：
        """
        if value and self.package:
            v_dot = value.find(".")
            if v_dot == 0:
                # Dot at the start
                value = self.package + value
            elif v_dot == -1:
                # Not a single dot
                value = self.package + "." + value
        return value

    def get_element(self, tag_name, attribute, **attribute_filter):
        """
        .. deprecated:: 3.3.5
            use :meth:`get_attribute_value` instead
           
           ..已弃用：：3.3.5
            改用：meth:`get_attribute_value`

        Return element in xml files which match with the tag name and the specific attribute

        :param str tag_name: specify the tag name
        :param str attribute: specify the attribute
        :rtype: str
        """
        warnings.warn("This method is deprecated since 3.3.5.", DeprecationWarning)
        for i in self.xml:
            if self.xml[i] is None:
                continue
            tag = self.xml[i].findall('.//' + tag_name)
            if len(tag) == 0:
                return None
            for item in tag:
                skip_this_item = False
                for attr, val in list(attribute_filter.items()):
                    attr_val = item.get(self._ns(attr))
                    if attr_val != val:
                        skip_this_item = True
                        break

                if skip_this_item:
                    continue

                value = item.get(self._ns(attribute))

                if value is not None:
                    return value
        return None

    def get_all_attribute_value(
        self, tag_name, attribute, format_value=True, **attribute_filter
    ):
        """
        Yields all the attribute values in xml files which match with the tag name and the specific attribute

        :param str tag_name: specify the tag name
        :param str attribute: specify the attribute
        :param bool format_value: specify if the value needs to be formatted with packagename
        
        
        生成xml文件中与标记名和特定属性匹配的所有属性值
        ：param str tag_name：指定标记名
        ：param str attribute：指定属性
        ：param bool format_value：指定值是否需要用packagename格式化
        
        """
        tags = self.find_tags(tag_name, **attribute_filter)
        for tag in tags:
            value = tag.get(attribute) or tag.get(self._ns(attribute))
            if value is not None:
                if format_value:
                    yield self._format_value(value)
                else:
                    yield value

    def get_attribute_value(
        self, tag_name, attribute, format_value=False, **attribute_filter
    ):
        """
        Return the attribute value in xml files which matches the tag name and the specific attribute

        :param str tag_name: specify the tag name
        :param str attribute: specify the attribute
        :param bool format_value: specify if the value needs to be formatted with packagename
        
        返回xml文件中与标记名称和特定属性相匹配的属性值

        :param STR tag_name:指定标签名
        :param STR attribute:指定属性
        :param bool format_value:指定该值是否需要使用packagename进行格式化
        """

        for value in self.get_all_attribute_value(
                tag_name, attribute, format_value, **attribute_filter):
            if value is not None:
                return value

    def get_value_from_tag(self, tag, attribute):
        """
        Return the value of the android prefixed attribute in a specific tag.

        This function will always try to get the attribute with a android: prefix first,
        and will try to return the attribute without the prefix, if the attribute could not be found.
        This is useful for some broken AndroidManifest.xml, where no android namespace is set,
        but could also indicate malicious activity (i.e. wrongly repackaged files).
        A warning is printed if the attribute is found without a namespace prefix.

        If you require to get the exact result you need to query the tag directly:
        
        在特定的标签中返回android前缀属性的值。

        这个函数总是先尝试获取带有android: prefix的属性，
        并将尝试返回不带前缀的属性，如果无法找到该属性。
        这对于一些坏掉的AndroidManifest.xml很有用，其中没有设置android命名空间，
        但也可能表明恶意活动(例如，错误地重新打包文件)。
        如果发现该属性没有名称空间前缀，则打印警告。

        如果你需要得到确切的结果，你需要直接查询标签:

        example::
            >>> from lxml.etree import Element
            >>> tag = Element('bar', nsmap={'android': 'http://schemas.android.com/apk/res/android'})
            >>> tag.set('{http://schemas.android.com/apk/res/android}foobar', 'barfoo')
            >>> tag.set('name', 'baz')
            # Assume that `a` is some APK object
            >>> a.get_value_from_tag(tag, 'name')
            'baz'
            >>> tag.get('name')
            'baz'
            >>> tag.get('foobar')
            None
            >>> a.get_value_from_tag(tag, 'foobar')
            'barfoo'

        :param lxml.etree.Element tag: specify the tag element
        :param str attribute: specify the attribute name
        :returns: the attribute's value, or None if the attribute is not present
        """

        # TODO: figure out if both android:name and name tag exist which one to give preference:
        # currently we give preference for the namespace one and fallback to the un-namespaced
        value = tag.get(self._ns(attribute))
        if value is None:
            value = tag.get(attribute)

            if value:
                # If value is still None, the attribute could not be found, thus is not present
                log.warning("Failed to get the attribute '{}' on tag '{}' with namespace. "
                            "But found the same attribute without namespace!".format(attribute, tag.tag))
        return value

    def find_tags(self, tag_name, **attribute_filter):
        """
        Return a list of all the matched tags in all available xml

        :param str tag: specify the tag name
        
        返回所有可用xml中所有匹配标记的列表

        :param STR tag:指定标签名
        """
        all_tags = [
            self.find_tags_from_xml(
                i, tag_name, **attribute_filter
            )
            for i in self.xml
        ]
        return [tag for tag_list in all_tags for tag in tag_list]

    def find_tags_from_xml(
        self, xml_name, tag_name, **attribute_filter
    ):
        """
        Return a list of all the matched tags in a specific xml
        w
        :param str xml_name: specify from which xml to pick the tag from
        :param str tag_name: specify the tag name
        
        返回特定xml中所有匹配标记的列表
        w
        :param STR xml_name:指定从哪个XML中选择标签
        :param STR tag_name:指定标签名
        """
        xml = self.xml[xml_name]
        if xml is None:
            return []
        if xml.tag == tag_name:
            if self.is_tag_matched(
                xml.tag, **attribute_filter
            ):
                return [xml]
            return []
        tags = xml.findall(".//" + tag_name)
        return [
            tag for tag in tags if self.is_tag_matched(
                tag, **attribute_filter
            )
        ]

    def is_tag_matched(self, tag, **attribute_filter):
        """
        Return true if the attributes matches in attribute filter.

        An attribute filter is a dictionary containing: {attribute_name: value}.
        This function will return True if and only if all attributes have the same value.
        This function allows to set the dictionary via kwargs, thus you can filter like this:

        example::
            a.is_tag_matched(tag, name="foobar", other="barfoo")

        This function uses a fallback for attribute searching. It will by default use
        the namespace variant but fall back to the non-namespace variant.
        Thus specifiying :code:`{"name": "foobar"}` will match on :code:`<bla name="foobar" \>`
        as well as on :code:`<bla android:name="foobar" \>`.

        :param lxml.etree.Element tag: specify the tag element
        :param attribute_filter: specify the attribute filter as dictionary
        
        如果属性在属性过滤器中匹配，则返回true。

        属性过滤器是一个包含:{attribute_name: value}的字典。
        当且仅当所有属性的值相同时，此函数将返回True。
        这个函数允许通过kwargs设置字典，因此你可以这样过滤:

        例如::
        a.is_tag_matched(tag, name="foobar", other="barfoo")

        这个函数使用一个回退来进行属性搜索。默认情况下，它将使用名称空间变体，但会退回到非名称空间变体。
        因此指定:code: ' {"name": "foobar"} '将匹配上:code: ' <bla name="foobar" \=""> '以及上:code:`<bla android:name="foobar" \>`

        :param lxml.etree.Element标签:指定标签元素
        :param attribute_filter:指定属性过滤器为字典
        """
        if len(attribute_filter) <= 0:
            return True
        for attr, value in attribute_filter.items():
            _value = self.get_value_from_tag(tag, attr)
            if _value != value:
                return False
        return True

    def get_main_activities(self):
        """
        Return names of the main activities

        These values are read from the AndroidManifest.xml

        :rtype: a set of str
        
        返回主要活动的名称

        这些值是从AndroidManifest.xml中读取的

        :rtype: STR的集合
        """
        x = set()
        y = set()

        for i in self.xml:
            if self.xml[i] is None:
                continue
            activities_and_aliases = self.xml[i].findall(".//activity") + \
                                     self.xml[i].findall(".//activity-alias")

            for item in activities_and_aliases:
                # Some applications have more than one MAIN activity.
                # For example: paid and free content
                activityEnabled = item.get(self._ns("enabled"))
                if activityEnabled == "false":
                    continue

                for sitem in item.findall(".//action"):
                    val = sitem.get(self._ns("name"))
                    if val == "android.intent.action.MAIN":
                        activity = item.get(self._ns("name"))
                        if activity is not None:
                            x.add(item.get(self._ns("name")))
                        else:
                            log.warning('Main activity without name')

                for sitem in item.findall(".//category"):
                    val = sitem.get(self._ns("name"))
                    if val == "android.intent.category.LAUNCHER":
                        activity = item.get(self._ns("name"))
                        if activity is not None:
                            y.add(item.get(self._ns("name")))
                        else:
                            log.warning('Launcher activity without name')

        return x.intersection(y)

    def get_main_activity(self):
        """
        Return the name of the main activity

        This value is read from the AndroidManifest.xml

        :rtype: str
        
        返回主活动的名称

        该值从AndroidManifest.xml中读取

        : rtype: str
        """
        activities = self.get_main_activities()
        if len(activities) > 0:
            return self._format_value(activities.pop())
        return None

    def get_activities(self):
        """
        Return the android:name attribute of all activities

        :rtype: a list of str
        
        返回所有活动的android:name属性

        :rtype: STR的列表
        """
        return list(self.get_all_attribute_value("activity", "name"))

    def get_services(self):
        """
        Return the android:name attribute of all services

        :rtype: a list of str
        """
        return list(self.get_all_attribute_value("service", "name"))

    def get_receivers(self):
        """
        Return the android:name attribute of all receivers

        :rtype: a list of string
        
        返回所有服务的android:name属性

        :rtype: STR的列表
        """
        return list(self.get_all_attribute_value("receiver", "name"))

    def get_providers(self):
        """
        Return the android:name attribute of all providers

        :rtype: a list of string
        
        返回所有provider的android:name属性

        :rtype:字符串列表
        """
        return list(self.get_all_attribute_value("provider", "name"))

    def get_res_value(self, name):
        """
        Return the literal value with a resource id
        :rtype: str 
        
        返回带资源id的文字值
        : rtype: str
        """

        res_parser = self.get_android_resources()
        if not res_parser:
            return name 

        res_id = res_parser.parse_id(name)[0]
        try:
            value = res_parser.get_resolved_res_configs(
                res_id,
                ARSCResTableConfig.default_config())[0][1]
        except Exception as e:
            log.warning("Exception get resolved resource id: %s" % e)
            return name

        return value 

    def get_intent_filters(self, itemtype, name):
        """
        Find intent filters for a given item and name.

        Intent filter are attached to activities, services or receivers.
        You can search for the intent filters of such items and get a dictionary of all
        attached actions and intent categories.

        :param itemtype: the type of parent item to look for, e.g. `activity`,  `service` or `receiver`
        :param name: the `android:name` of the parent item, e.g. activity name
        :returns: a dictionary with the keys `action` and `category` containing the `android:name` of those items
        
        查找给定项目item和名称name的意图intent过滤器。

        意图过滤器附加到活动，服务或接收者。
        你可以搜索这些条目的意图过滤器，得到一个包含所有附加动作和意图类别的字典。

        要查找的父项的类型。' activity '， ' service '或' receiver '
        :参数名称:父项的“android:名称”，例如活动名称
        :返回:一个包含键' action '和' category '的字典，其中包含这些项的' android:name '
        """
        attributes = {"action": ["name"], "category": ["name"], "data": ['scheme', 'host', 'port', 'path', 'pathPattern', 'pathPrefix', 'mimeType']}

        d = {}
        for element in attributes.keys():
            d[element] = []

        for i in self.xml:
            # TODO: this can probably be solved using a single xpath
            for item in self.xml[i].findall(".//" + itemtype):
                if self._format_value(item.get(self._ns("name"))) == name:
                    for sitem in item.findall(".//intent-filter"):
                        for element in d.keys():
                            for ssitem in sitem.findall(element):
                                if element == 'data': # multiple attributes
                                    values = {}
                                    for attribute in attributes[element]:
                                        value = ssitem.get(self._ns(attribute))
                                        if value:
                                            if value.startswith('@'):
                                                value = self.get_res_value(value)
                                            values[attribute] = value

                                    if values:
                                        d[element].append(values)
                                else:
                                    for attribute in attributes[element]:
                                        value = ssitem.get(self._ns(attribute))
                                        if value.startswith('@'):
                                            value = self.get_res_value(value)

                                        if value not in d[element]:
                                            d[element].append(value)

        for element in list(d.keys()):
            if not d[element]:
                del d[element]

        return d

    def get_permissions(self):
        """
        Return permissions names declared in the AndroidManifest.xml.

        It is possible that permissions are returned multiple times,
        as this function does not filter the permissions, i.e. it shows you
        exactly what was defined in the AndroidManifest.xml.

        Implied permissions, which are granted automatically, are not returned
        here. Use :meth:`get_uses_implied_permission_list` if you need a list
        of implied permissions.

        :returns: A list of permissions
        :rtype: list
        
        返回AndroidManifest.xml中声明的权限名。

        权限可能会被多次返回，因为这个函数不会过滤权限，也就是说，它会精确地显示在AndroidManifest.xml中定义了什么。

        这里不返回自动授予的隐含权限。如果需要隐含权限列表，请使用:meth: ' get_uses_implied_permission_list '。

        :返回:权限列表
        : rtype:列表
        """
        
        
        return self.permissions

    def get_uses_implied_permission_list(self):
        """
            Return all permissions implied by the target SDK or other permissions.

            :rtype: list of string
            
            返回目标SDK暗示的所有权限或其他权限。

            :rtype:字符串列表
        """
        target_sdk_version = self.get_effective_target_sdk_version()

        READ_CALL_LOG = 'android.permission.READ_CALL_LOG'
        READ_CONTACTS = 'android.permission.READ_CONTACTS'
        READ_EXTERNAL_STORAGE = 'android.permission.READ_EXTERNAL_STORAGE'
        READ_PHONE_STATE = 'android.permission.READ_PHONE_STATE'
        WRITE_CALL_LOG = 'android.permission.WRITE_CALL_LOG'
        WRITE_CONTACTS = 'android.permission.WRITE_CONTACTS'
        WRITE_EXTERNAL_STORAGE = 'android.permission.WRITE_EXTERNAL_STORAGE'

        implied = []

        implied_WRITE_EXTERNAL_STORAGE = False
        if target_sdk_version < 4:
            if WRITE_EXTERNAL_STORAGE not in self.permissions:
                implied.append([WRITE_EXTERNAL_STORAGE, None])
                implied_WRITE_EXTERNAL_STORAGE = True
            if READ_PHONE_STATE not in self.permissions:
                implied.append([READ_PHONE_STATE, None])

        if (WRITE_EXTERNAL_STORAGE in self.permissions or implied_WRITE_EXTERNAL_STORAGE) \
            and READ_EXTERNAL_STORAGE not in self.permissions:
            maxSdkVersion = None
            for name, version in self.uses_permissions:
                if name == WRITE_EXTERNAL_STORAGE:
                    maxSdkVersion = version
                    break
            implied.append([READ_EXTERNAL_STORAGE, maxSdkVersion])

        if target_sdk_version < 16:
            if READ_CONTACTS in self.permissions \
                and READ_CALL_LOG not in self.permissions:
                implied.append([READ_CALL_LOG, None])
            if WRITE_CONTACTS in self.permissions \
                and WRITE_CALL_LOG not in self.permissions:
                implied.append([WRITE_CALL_LOG, None])

        return implied

    def get_details_permissions(self):
        """
        Return permissions with details.

        THis can only return details about the permission, if the permission is
        defined in the AOSP.

        :rtype: dict of {permission: [protectionLevel, label, description]}
        
        返回带有详细信息的权限。
        只能返回在AOSP中定义的权限的详细信息
        ：rtype:dict的{permission:[protectionLevel，label，description]}
        """
        l = {}

        for i in self.permissions:
            if i in self.permission_module:
                x = self.permission_module[i]
                l[i] = [x["protectionLevel"], x["label"], x["description"]]
            else:
                # FIXME: the permission might be signature, if it is defined by the app itself!
                l[i] = ["normal", "Unknown permission from android reference",
                        "Unknown permission from android reference"]
        return l

    def get_requested_permissions(self):
        """
        .. deprecated:: 3.1.0
            use :meth:`get_permissions` instead.

        Returns all requested permissions.

        It has the same result as :meth:`get_permissions` and might be removed in the future

        :rtype: list of str
        
        
        ..已弃用：：3.1.0
        改为使用：meth:`get_permissions`。
        返回所有请求的权限。
        它的结果与：meth:`get_permissions`相同，将来可能会被删除
        ：rtype：字符串列表
        """
        warnings.warn("This method is deprecated since 3.1.0.", DeprecationWarning)
        return self.get_permissions()

    def get_requested_aosp_permissions(self):
        """
        Returns requested permissions declared within AOSP project.

        This includes several other permissions as well, which are in the platform apps.

        :rtype: list of str
        
        返回AOSP项目中声明的请求权限。
        这还包括平台应用程序中的其他几个权限。
        ：rtype：字符串列表
        """
        aosp_permissions = []
        all_permissions = self.get_permissions()
        for perm in all_permissions:
            if perm in list(self.permission_module.keys()):
                aosp_permissions.append(perm)
        return aosp_permissions

    def get_requested_aosp_permissions_details(self):
        """
        Returns requested aosp permissions with details.

        :rtype: dictionary
        
        返回请求的aosp权限及其详细信息。
        ：rtype:字典
        """
        l = {}
        for i in self.permissions:
            try:
                l[i] = self.permission_module[i]
            except KeyError:
                # if we have not found permission do nothing
                continue
        return l

    def get_requested_third_party_permissions(self):
        """
        Returns list of requested permissions not declared within AOSP project.

        :rtype: list of strings
        
        返回未在AOSP项目中声明的请求权限列表。
        ：rtype：字符串列表
        """
        third_party_permissions = []
        all_permissions = self.get_permissions()
        for perm in all_permissions:
            if perm not in list(self.permission_module.keys()):
                third_party_permissions.append(perm)
        return third_party_permissions

    def get_declared_permissions(self):
        """
        Returns list of the declared permissions.

        :rtype: list of strings
        
        返回声明的权限列表。
        ：rtype：字符串列表
        """
        return list(self.declared_permissions.keys())

    def get_declared_permissions_details(self):
        """
        Returns declared permissions with the details.

        :rtype: dict
        
        返回声明的权限及其详细信息。
        ：rtype:dict
        """
        return self.declared_permissions

    def get_max_sdk_version(self):
        """
            Return the android:maxSdkVersion attribute

            :rtype: string
            
            返回android:maxSdkVersion属性
            ：rtype:string
        """
        return self.get_attribute_value("uses-sdk", "maxSdkVersion")

    def get_min_sdk_version(self):
        """
            Return the android:minSdkVersion attribute

            :rtype: string
            
            返回android:minSdkVersion属性
            ：rtype:string
        """
        return self.get_attribute_value("uses-sdk", "minSdkVersion")

    def get_target_sdk_version(self):
        """
            Return the android:targetSdkVersion attribute

            :rtype: string
            
            返回android:targetSdkVersion属性
            ：rtype:string
        """
        return self.get_attribute_value("uses-sdk", "targetSdkVersion")

    def get_effective_target_sdk_version(self):
        """
            Return the effective targetSdkVersion, always returns int > 0.

            If the targetSdkVersion is not set, it defaults to 1.  This is
            set based on defaults as defined in:
            https://developer.android.com/guide/topics/manifest/uses-sdk-element.html

            :rtype: int
            
            返回有效的targetSdkVersion，始终返回int>0。
            如果未设置targetSdkVersion，则默认为1。这是
            根据中定义的默认值设置：https://developer.android.com/guide/topics/manifest/uses-sdk-element.html
            ：rtype:整数
        """
        target_sdk_version = self.get_target_sdk_version()
        if not target_sdk_version:
            target_sdk_version = self.get_min_sdk_version()
        try:
            return int(target_sdk_version)
        except (ValueError, TypeError):
            return 1

    def get_libraries(self):
        """
            Return the android:name attributes for libraries

            :rtype: list
            
            返回库的android:name属性
            
            在最开始的时候，AndroidManifest中要列出必要的lib库。
            但是这东西在3.0以后的Android Studio似乎也没什么功能，因为在3.0以后编译用的是CMakeLists.txt文件，以及build.gradle文件来指定库。
            ：rtype：列表
            
            所以通过这个方法来获取导入的库是不合理的
        """
        return list(self.get_all_attribute_value("uses-library", "name"))

    def get_features(self):
        """
        Return a list of all android:names found for the tag uses-feature
        in the AndroidManifest.xml
        
        返回AndroidManifest.xml中的所有android:名称的列表

        :returns: list
        """
        return list(self.get_all_attribute_value("uses-feature", "name"))

    def is_wearable(self):
        """
        Checks if this application is build for wearables by
        checking if it uses the feature 'android.hardware.type.watch'
        See: https://developer.android.com/training/wearables/apps/creating.html for more information.

        Not every app is setting this feature (not even the example Google provides),
        so it might be wise to not 100% rely on this feature.

        :returns: True if wearable, False otherwise
        
        
        检查此应用程序是否由为可穿戴设备构建
        检查是否使用“android.hardware.type.watch”功能
        请参见：https://developer.android.com/training/wearables/apps/creating.html了解更多信息。
        并非每个应用程序都设置了此功能（甚至谷歌提供的示例也不例外），
        因此，最好不要100%依赖此功能。
        ：returns：如果可穿戴为True，否则为False
        """
        return 'android.hardware.type.watch' in self.get_features()

    def is_leanback(self):
        """
        Checks if this application is build for TV (Leanback support)
        by checkin if it uses the feature 'android.software.leanback'

        :returns: True if leanback feature is used, false otherwise
        """
        return 'android.software.leanback' in self.get_features()

    def is_androidtv(self):
        """
        Checks if this application does not require a touchscreen,
        as this is the rule to get into the TV section of the Play Store
        See: https://developer.android.com/training/tv/start/start.html for more information.

        :returns: True if 'android.hardware.touchscreen' is not required, False otherwise
        """
        return self.get_attribute_value('uses-feature', 'name', required="false", name="android.hardware.touchscreen") == "android.hardware.touchscreen"

    def get_certificate_der(self, filename):
        """
        Return the DER coded X.509 certificate from the signature file.

        :param filename: Signature filename in APK
        :returns: DER coded X.509 certificate as binary
        
        从签名文件返回DER编码的X.509证书。
        ：param filename：APK中的签名文件名
        ：返回：DER编码的X.509证书为二进制
        """
        pkcs7message = self.get_file(filename)

        pkcs7obj = cms.ContentInfo.load(pkcs7message)
        cert = pkcs7obj['content']['certificates'][0].chosen.dump()
        return cert

    def get_certificate(self, filename):
        """
        Return a X.509 certificate object by giving the name in the apk file

        :param filename: filename of the signature file in the APK
        :returns: a :class:`Certificate` certificate
        
        通过在apk文件中指定名称，返回X.509证书对象
        ：param filename：APK中签名文件的文件名
        ：returns:a:class:`Certificate`证书
        """
        cert = self.get_certificate_der(filename)
        certificate = x509.Certificate.load(cert)

        return certificate

    def new_zip(self, filename, deleted_files=None, new_files={}):
        """
            Create a new zip file

            :param filename: the output filename of the zip
            :param deleted_files: a regex pattern to remove specific file
            :param new_files: a dictionnary of new files

            :type filename: string
            :type deleted_files: None or a string
            :type new_files: a dictionnary (key:filename, value:content of the file)
            
            
            创建新的zip文件
            ：param filename：zip的输出文件名
            ：param deleted_files：删除特定文件的正则表达式模式
            ：param new_files：新文件目录
            ：type filename：字符串
            ：type deleted_files：无或字符串
            ：type new_files：字典（键：文件名，值：文件内容）
        """
        zout = zipfile.ZipFile(filename, 'w')

        for item in self.zip.infolist():
            # Block one: deleted_files, or deleted_files and new_files
            if deleted_files is not None:
                if re.match(deleted_files, item.filename) is None:
                    # if the regex of deleted_files doesn't match the filename
                    if new_files is not False:
                        if item.filename in new_files:
                            # and if the filename is in new_files
                            zout.writestr(item, new_files[item.filename])
                            continue
                    # Otherwise, write the original file.
                    buffer = self.zip.read(item.filename)
                    zout.writestr(item, buffer)
            # Block two: deleted_files is None, new_files is not empty
            elif new_files is not False:
                if item.filename in new_files:
                    zout.writestr(item, new_files[item.filename])
                else:
                    buffer = self.zip.read(item.filename)
                    zout.writestr(item, buffer)
            # Block three: deleted_files is None, new_files is empty.
            # Just write out the default zip
            else:
                buffer = self.zip.read(item.filename)
                zout.writestr(item, buffer)
        zout.close()

    def get_android_manifest_axml(self):
        """
            Return the :class:`AXMLPrinter` object which corresponds to the AndroidManifest.xml file

            :rtype: :class:`~androguard.core.bytecodes.axml.AXMLPrinter`
            
            返回与AndroidManifest/xml文件对应的：class:`AXMLPrinter`对象
            ：rtype:：class:`~androguard.core.bytecodes.axml.axml打印机`
        """
        try:
            return self.axml["AndroidManifest.xml"]
        except KeyError:
            return None

    def get_android_manifest_xml(self):
        """
        Return the parsed xml object which corresponds to the AndroidManifest.xml file

        :rtype: :class:`~lxml.etree.Element`
        
        返回对应于AndroidManifest/xml文件的解析xml对象
        ：rtype:：类：`~lxml.eteree.Element`
        """
        try:
            return self.xml["AndroidManifest.xml"]
        except KeyError:
            return None

    def get_android_resources(self):
        """
        Return the :class:`~androguard.core.bytecodes.axml.ARSCParser` object which corresponds to the resources.arsc file

        :rtype: :class:`~androguard.core.bytecodes.axml.ARSCParser`
        
        返回：class:`~androguard.core.bytecodes.xml。ARSCParser`与资源/arsc文件对应的对象
        ：rtype:：类：`~androguard.core.bytecodes.axml.ARSCParser`
        """
        try:
            return self.arsc["resources.arsc"]
        except KeyError:
            if "resources.arsc" not in self.zip.namelist():
                # There is a rare case, that no resource file is supplied.
                # Maybe it was added manually, thus we check here
                return None
            self.arsc["resources.arsc"] = ARSCParser(self.zip.read("resources.arsc"))
            return self.arsc["resources.arsc"]

    def is_signed(self):
        """
        Returns true if any of v1, v2, or v3 signatures were found.
        
        如果找到v1、v2或v3签名中的任何一个，则返回true。
        """
        return self.is_signed_v1() or self.is_signed_v2() or self.is_signed_v3()

    def is_signed_v1(self):
        """
        Returns true if a v1 / JAR signature was found.

        Returning `True` does not mean that the file is properly signed!
        It just says that there is a signature file which needs to be validated.
        
        如果找到v1/JAR签名，则返回true。
        返回“True”并不意味着文件已正确签名！  Androguard不做签名校验的工作
        它只是说有一个签名文件需要验证。
        """
        return self.get_signature_name() is not None

    def is_signed_v2(self):
        """
        Returns true of a v2 / APK signature was found.

        Returning `True` does not mean that the file is properly signed!
        It just says that there is a signature file which needs to be validated.
        
        如果找到v2/APK签名，则返回true。
        返回“True”并不意味着文件已正确签名！
        它只是说有一个签名文件需要验证。
        """
        if self._is_signed_v2 is None:
            self.parse_v2_v3_signature()

        return self._is_signed_v2

    def is_signed_v3(self):
        """
        Returns true of a v3 / APK signature was found.

        Returning `True` does not mean that the file is properly signed!
        It just says that there is a signature file which needs to be validated.
        
        如果找到v3/APK签名，则返回true。
        返回“True”并不意味着文件已正确签名！
        它只是说有一个签名文件需要验证。
        """
        if self._is_signed_v3 is None:
            self.parse_v2_v3_signature()

        return self._is_signed_v3

    def read_uint32_le(self, io_stream):
        value, = unpack('<I', io_stream.read(4))
        return value

    def parse_signatures_or_digests(self, digest_bytes):
        """ Parse digests 分析摘要"""

        if not len(digest_bytes):
            return []

        digests = []
        block = io.BytesIO(digest_bytes)

        data_len = self.read_uint32_le(block)
        while block.tell() < data_len:

            algorithm_id = self.read_uint32_le(block)
            digest_len = self.read_uint32_le(block)
            digest = block.read(digest_len)

            digests.append((algorithm_id, digest))

        return digests

    def parse_v2_v3_signature(self):
        # Need to find an v2 Block in the APK.
        # The Google Docs gives you the following rule:
        # * go to the end of the ZIP File
        # * search for the End of Central directory
        # * then jump to the beginning of the central directory
        # * Read now the magic of the signing block
        # * before the magic there is the size_of_block, so we can jump to
        # the beginning.
        # * There should be again the size_of_block
        # * Now we can read the Key-Values
        # * IDs with an unknown value should be ignored.
        f = io.BytesIO(self.get_raw())

        size_central = None
        offset_central = None

        # Go to the end
        f.seek(-1, io.SEEK_END)
        # we know the minimal length for the central dir is 16+4+2
        f.seek(-20, io.SEEK_CUR)

        while f.tell() > 0:
            f.seek(-1, io.SEEK_CUR)
            r, = unpack('<4s', f.read(4))
            if r == self._PK_END_OF_CENTRAL_DIR:
                # Read central dir
                this_disk, disk_central, this_entries, total_entries, \
                size_central, offset_central = unpack('<HHHHII', f.read(16))
                # TODO according to the standard we need to check if the
                # end of central directory is the last item in the zip file
                # TODO We also need to check if the central dir is exactly
                # before the end of central dir...

                # These things should not happen for APKs
                if this_disk != 0:
                    raise BrokenAPKError("Not sure what to do with multi disk ZIP!")
                if disk_central != 0:
                    raise BrokenAPKError("Not sure what to do with multi disk ZIP!")
                break
            f.seek(-4, io.SEEK_CUR)

        if not offset_central:
            return

        f.seek(offset_central)
        r, = unpack('<4s', f.read(4))
        f.seek(-4, io.SEEK_CUR)
        if r != self._PK_CENTRAL_DIR:
            raise BrokenAPKError("No Central Dir at specified offset")

        # Go back and check if we have a magic
        end_offset = f.tell()
        f.seek(-24, io.SEEK_CUR)
        size_of_block, magic = unpack('<Q16s', f.read(24))

        self._is_signed_v2 = False
        self._is_signed_v3 = False

        if magic != self._APK_SIG_MAGIC:
            return

        # go back size_of_blocks + 8 and read size_of_block again
        f.seek(-(size_of_block + 8), io.SEEK_CUR)
        size_of_block_start, = unpack("<Q", f.read(8))
        if size_of_block_start != size_of_block:
            raise BrokenAPKError("Sizes at beginning and and does not match!")

        # Store all blocks
        while f.tell() < end_offset - 24:
            size, key = unpack('<QI', f.read(12))
            value = f.read(size - 4)
            self._v2_blocks[key] = value

        # Test if a signature is found
        if self._APK_SIG_KEY_V2_SIGNATURE in self._v2_blocks:
            self._is_signed_v2 = True

        if self._APK_SIG_KEY_V3_SIGNATURE in self._v2_blocks:
            self._is_signed_v3 = True


    def parse_v3_signing_block(self):
        """
        Parse the V2 signing block and extract all features
        """

        self._v3_signing_data = []

        # calling is_signed_v3 should also load the signature, if any
        if not self.is_signed_v3():
            return

        block_bytes = self._v2_blocks[self._APK_SIG_KEY_V3_SIGNATURE]
        block = io.BytesIO(block_bytes)
        view = block.getvalue()

        # V3 signature Block data format:
        #
        # * signer:
        #    * signed data:
        #        * digests:
        #            * signature algorithm ID (uint32)
        #            * digest (length-prefixed)
        #        * certificates
        #        * minSDK
        #        * maxSDK
        #        * additional attributes
        #    * minSDK
        #    * maxSDK
        #    * signatures
        #    * publickey
        size_sequence = self.read_uint32_le(block)
        if size_sequence + 4 != len(block_bytes):
            raise BrokenAPKError("size of sequence and blocksize does not match")

        while block.tell() < len(block_bytes):
            off_signer = block.tell()
            size_signer = self.read_uint32_le(block)

            # read whole signed data, since we might to parse
            # content within the signed data, and mess up offset
            len_signed_data = self.read_uint32_le(block)
            signed_data_bytes = block.read(len_signed_data)
            signed_data = io.BytesIO(signed_data_bytes)

            # Digests
            len_digests = self.read_uint32_le(signed_data)
            raw_digests = signed_data.read(len_digests)
            digests = self.parse_signatures_or_digests(raw_digests)


            # Certs
            certs = []
            len_certs = self.read_uint32_le(signed_data)
            start_certs = signed_data.tell()
            while signed_data.tell() < start_certs + len_certs:

                len_cert = self.read_uint32_le(signed_data)
                cert = signed_data.read(len_cert)
                certs.append(cert)

            # versions
            signed_data_min_sdk = self.read_uint32_le(signed_data)
            signed_data_max_sdk = self.read_uint32_le(signed_data)

            # Addional attributes
            len_attr = self.read_uint32_le(signed_data)
            attr = signed_data.read(len_attr)

            signed_data_object = APKV3SignedData()
            signed_data_object._bytes = signed_data_bytes
            signed_data_object.digests = digests
            signed_data_object.certificates = certs
            signed_data_object.additional_attributes = attr
            signed_data_object.minSDK = signed_data_min_sdk
            signed_data_object.maxSDK = signed_data_max_sdk

            # versions (should be the same as signed data's versions)
            signer_min_sdk = self.read_uint32_le(block)
            signer_max_sdk = self.read_uint32_le(block)

            # Signatures
            len_sigs = self.read_uint32_le(block)
            raw_sigs = block.read(len_sigs)
            sigs = self.parse_signatures_or_digests(raw_sigs)

            # PublicKey
            len_publickey = self.read_uint32_le(block)
            publickey = block.read(len_publickey)

            signer = APKV3Signer()
            signer._bytes = view[off_signer:off_signer+size_signer]
            signer.signed_data = signed_data_object
            signer.signatures = sigs
            signer.public_key = publickey
            signer.minSDK = signer_min_sdk
            signer.maxSDK = signer_max_sdk

            self._v3_signing_data.append(signer)

    def parse_v2_signing_block(self):
        """
        Parse the V2 signing block and extract all features
        """

        self._v2_signing_data = []

        # calling is_signed_v2 should also load the signature
        if not self.is_signed_v2():
            return

        block_bytes = self._v2_blocks[self._APK_SIG_KEY_V2_SIGNATURE]
        block = io.BytesIO(block_bytes)
        view = block.getvalue()

        # V2 signature Block data format:
        #
        # * signer:
        #    * signed data:
        #        * digests:
        #            * signature algorithm ID (uint32)
        #            * digest (length-prefixed)
        #        * certificates
        #        * additional attributes
        #    * signatures
        #    * publickey

        size_sequence = self.read_uint32_le(block)
        if size_sequence + 4 != len(block_bytes):
            raise BrokenAPKError("size of sequence and blocksize does not match")

        while block.tell() < len(block_bytes):
            off_signer = block.tell()
            size_signer = self.read_uint32_le(block)

            # read whole signed data, since we might to parse
            # content within the signed data, and mess up offset
            len_signed_data = self.read_uint32_le(block)
            signed_data_bytes = block.read(len_signed_data)
            signed_data = io.BytesIO(signed_data_bytes)

            # Digests
            len_digests = self.read_uint32_le(signed_data)
            raw_digests = signed_data.read(len_digests)
            digests = self.parse_signatures_or_digests(raw_digests)

            # Certs
            certs = []
            len_certs = self.read_uint32_le(signed_data)
            start_certs = signed_data.tell()
            while signed_data.tell() < start_certs + len_certs:
                len_cert = self.read_uint32_le(signed_data)
                cert = signed_data.read(len_cert)
                certs.append(cert)

            # Additional attributes
            len_attr = self.read_uint32_le(signed_data)
            attributes = signed_data.read(len_attr)

            signed_data_object = APKV2SignedData()
            signed_data_object._bytes = signed_data_bytes
            signed_data_object.digests = digests
            signed_data_object.certificates = certs
            signed_data_object.additional_attributes = attributes

            # Signatures
            len_sigs = self.read_uint32_le(block)
            raw_sigs = block.read(len_sigs)
            sigs = self.parse_signatures_or_digests(raw_sigs)

            # PublicKey
            len_publickey = self.read_uint32_le(block)
            publickey = block.read(len_publickey)

            signer = APKV2Signer()
            signer._bytes = view[off_signer:off_signer+size_signer]
            signer.signed_data = signed_data_object
            signer.signatures = sigs
            signer.public_key = publickey

            self._v2_signing_data.append(signer)

    def get_public_keys_der_v3(self):
        """
        Return a list of DER coded X.509 public keys from the v3 signature block
        
        从v3签名块返回DER编码的X.509公钥列表
        """

        if self._v3_signing_data == None:
            self.parse_v3_signing_block()

        public_keys = []

        for signer in self._v3_signing_data:
            public_keys.append(signer.public_key)

        return public_keys

    def get_public_keys_der_v2(self):
        """
        Return a list of DER coded X.509 public keys from the v2 signature block
        
        从v2签名块返回DER编码的X.509公钥列表
        """

        if self._v2_signing_data == None:
            self.parse_v2_signing_block()

        public_keys = []

        for signer in self._v2_signing_data:
            public_keys.append(signer.public_key)

        return public_keys

    def get_certificates_der_v3(self):
        """
        Return a list of DER coded X.509 certificates from the v3 signature block
        
        从v3签名块返回DER编码的X.509证书列表
        """

        if self._v3_signing_data == None:
            self.parse_v3_signing_block()

        certs = []
        for signed_data in [signer.signed_data for signer in self._v3_signing_data]:
            for cert in signed_data.certificates:
                certs.append(cert)

        return certs

    def get_certificates_der_v2(self):
        """
        Return a list of DER coded X.509 certificates from the v3 signature block
        """

        if self._v2_signing_data == None:
            self.parse_v2_signing_block()

        certs = []
        for signed_data in [signer.signed_data for signer in self._v2_signing_data]:
            for cert in signed_data.certificates:
                certs.append(cert)

        return certs

    def get_public_keys_v3(self):
        """
        Return a list of :class:`asn1crypto.keys.PublicKeyInfo` which are found
        in the v3 signing block.
        """
        return [ keys.PublicKeyInfo.load(pkey) for pkey in self.get_public_keys_der_v3()]

    def get_public_keys_v2(self):
        """
        Return a list of :class:`asn1crypto.keys.PublicKeyInfo` which are found
        in the v2 signing block.
        """
        return [ keys.PublicKeyInfo.load(pkey) for pkey in self.get_public_keys_der_v2()]

    def get_certificates_v3(self):
        """
        Return a list of :class:`asn1crypto.x509.Certificate` which are found
        in the v3 signing block.
        Note that we simply extract all certificates regardless of the signer.
        Therefore this is just a list of all certificates found in all signers.
        """
        return [ x509.Certificate.load(cert) for cert in self.get_certificates_der_v3()]

    def get_certificates_v2(self):
        """
        Return a list of :class:`asn1crypto.x509.Certificate` which are found
        in the v2 signing block.
        Note that we simply extract all certificates regardless of the signer.
        Therefore this is just a list of all certificates found in all signers.
        """
        return [ x509.Certificate.load(cert) for cert in self.get_certificates_der_v2()]

    def get_certificates_v1(self):
        """
        Return a list of :class:`asn1crypto.x509.Certificate` which are found
        in the META-INF folder (v1 signing).
        Note that we simply extract all certificates regardless of the signer.
        Therefore this is just a list of all certificates found in all signers.
        """
        certs = []
        for x in self.get_signature_names():
            certs.append(x509.Certificate.load(self.get_certificate_der(x)))

        return certs

    def get_certificates(self):
        """
        Return a list of unique :class:`asn1crypto.x509.Certificate` which are found
        in v1, v2 and v3 signing
        Note that we simply extract all certificates regardless of the signer.
        Therefore this is just a list of all certificates found in all signers.
        
        返回在v1、v2和v3签名中找到的唯一：class:`asn1crypto.x509.Certificate`的列表
        请注意，我们只是提取所有证书，而不考虑签名者。
        因此，这只是在所有签名者中找到的所有证书的列表。
        """
        fps = []
        certs = []
        for x in self.get_certificates_v1() + self.get_certificates_v2() + self.get_certificates_v3():
            if x.sha256 not in fps:
                fps.append(x.sha256)
                certs.append(x)
        return certs

    def get_signature_name(self):
        """
            Return the name of the first signature file found.
            
            返回找到的第一个签名文件的名称。
        """
        if self.get_signature_names():
            return self.get_signature_names()[0]
        else:
            # Unsigned APK
            return None

    def get_signature_names(self):
        """
        Return a list of the signature file names (v1 Signature / JAR
        Signature)

        :rtype: List of filenames matching a Signature
        
        返回签名文件名列表（v1 signature/JAR signature）
        ：rtype：与签名匹配的文件名列表
        """
        signature_expr = re.compile(r"^(META-INF/)(.*)(\.RSA|\.EC|\.DSA)$")
        signatures = []

        for i in self.get_files():
            if signature_expr.search(i):
                if "{}.SF".format(i.rsplit(".", 1)[0]) in self.get_files():
                    signatures.append(i)
                else:
                    log.warning("v1 signature file {} missing .SF file - Partial signature!".format(i))

        return signatures

    def get_signature(self):
        """
        Return the data of the first signature file found (v1 Signature / JAR
        Signature)

        :rtype: First signature name or None if not signed
        
        返回找到的第一个签名文件的数据（v1 signature/JAR signature）
        ：rtype：第一个签名名或无（如果未签名）
        """
        if self.get_signatures():
            return self.get_signatures()[0]
        else:
            return None

    def get_signatures(self):
        """
        Return a list of the data of the signature files.
        Only v1 / JAR Signing.

        :rtype: list of bytes
        """
        signature_expr = re.compile(r"^(META-INF/)(.*)(\.RSA|\.EC|\.DSA)$")
        signature_datas = []

        for i in self.get_files():
            if signature_expr.search(i):
                signature_datas.append(self.get_file(i))

        return signature_datas

    def show(self):
        self.get_files_types()

        print("FILES: ")
        for i in self.get_files():
            try:
                print("\t", i, self._files[i], "%x" % self.files_crc32[i])
            except KeyError:
                print("\t", i, "%x" % self.files_crc32[i])

        print("DECLARED PERMISSIONS:")
        declared_permissions = self.get_declared_permissions()
        for i in declared_permissions:
            print("\t", i)

        print("REQUESTED PERMISSIONS:")
        requested_permissions = self.get_permissions()
        for i in requested_permissions:
            print("\t", i)

        print("MAIN ACTIVITY: ", self.get_main_activity())

        print("ACTIVITIES: ")
        activities = self.get_activities()
        for i in activities:
            filters = self.get_intent_filters("activity", i)
            print("\t", i, filters or "")

        print("SERVICES: ")
        services = self.get_services()
        for i in services:
            filters = self.get_intent_filters("service", i)
            print("\t", i, filters or "")

        print("RECEIVERS: ")
        receivers = self.get_receivers()
        for i in receivers:
            filters = self.get_intent_filters("receiver", i)
            print("\t", i, filters or "")

        print("PROVIDERS: ", self.get_providers())

        if self.is_signed_v1():
            print("CERTIFICATES v1:")
            for c in self.get_signature_names():
                show_Certificate(self.get_certificate(c))

        if self.is_signed_v2():
            print("CERTIFICATES v2:")
            for c in self.get_certificates_v2():
                show_Certificate(c)


def show_Certificate(cert, short=False):
    """
        Print Fingerprints, Issuer and Subject of an X509 Certificate.

        :param cert: X509 Certificate to print
        :param short: Print in shortform for DN (Default: False)

        :type cert: :class:`asn1crypto.x509.Certificate`
        :type short: Boolean
    """
    print("SHA1 Fingerprint: {}".format(cert.sha1_fingerprint))
    print("SHA256 Fingerprint: {}".format(cert.sha256_fingerprint))
    print("Issuer: {}".format(get_certificate_name_string(cert.issuer.native, short=short)))
    print("Subject: {}".format(get_certificate_name_string(cert.subject.native, short=short)))


def ensure_final_value(packageName, arsc, value):
    """
    Ensure incoming value is always the value, not the resid

    androguard will sometimes return the Android "resId" aka
    Resource ID instead of the actual value.  This checks whether
    the value is actually a resId, then performs the Android
    Resource lookup as needed.
    
    确保传入值始终是值，而不是resID
    androguard有时会返回Android的“resId”，也就是资源ID，而不是实际值。
    这将检查值是否实际上是一个resId，然后根据需要执行Android资源查找。

    """
    if value:
        returnValue = value
        if value[0] == '@':
            # TODO: @packagename:DEADBEEF is not supported here!
            try:  # can be a literal value or a resId
                res_id = int('0x' + value[1:], 16)
                res_id = arsc.get_id(packageName, res_id)[1]
                returnValue = arsc.get_string(packageName, res_id)[1]
            except (ValueError, TypeError):
                pass
        return returnValue
    return ''


def get_apkid(apkfile):
    """
    Read (appid, versionCode, versionName) from an APK

    This first tries to do quick binary XML parsing to just get the
    values that are needed.  It will fallback to full androguard
    parsing, which is slow, if it can't find the versionName value or
    versionName is set to a Android String Resource (e.g. an integer
    hex value that starts with @).
    
    
    从APK读取(appid, versionCode, versionName)

    它首先尝试进行快速的二进制XML解析，以获得所需的值。
    如果它找不到versionName值或者versionName被设置为Android字符串资源(例如以@开头的整数十六进制值)，
    它将退回到完整的androguard解析，这是很慢的。

    """
    if not os.path.exists(apkfile):
        log.error("'{apkfile}' does not exist!".format(apkfile=apkfile))

    appid = None
    versionCode = None
    versionName = None
    with zipfile.ZipFile(apkfile) as apk:
        with apk.open('AndroidManifest.xml') as manifest:
            axml = AXMLParser(manifest.read())
            count = 0
            while axml.is_valid():
                _type = next(axml)
                count += 1
                if _type == START_TAG:
                    for i in range(0, axml.getAttributeCount()):
                        name = axml.getAttributeName(i)
                        _type = axml.getAttributeValueType(i)
                        _data = axml.getAttributeValueData(i)
                        value = format_value(_type, _data, lambda _: axml.getAttributeValue(i))
                        if appid is None and name == 'package':
                            appid = value
                        elif versionCode is None and name == 'versionCode':
                            if value.startswith('0x'):
                                versionCode = str(int(value, 16))
                            else:
                                versionCode = value
                        elif versionName is None and name == 'versionName':
                            versionName = value

                    if axml.name == 'manifest':
                        break
                elif _type == END_TAG or _type == TEXT or _type == END_DOCUMENT:
                    raise RuntimeError('{path}: <manifest> must be the first element in AndroidManifest.xml'
                                       .format(path=apkfile))

    if not versionName or versionName[0] == '@':
        a = APK(apkfile)
        versionName = ensure_final_value(a.package, a.get_android_resources(), a.get_androidversion_name())
    if not versionName:
        versionName = ''  # versionName is expected to always be a str

    return appid, versionCode, versionName.strip('\0')
