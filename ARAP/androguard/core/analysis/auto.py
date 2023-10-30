import os
import queue
import threading
import time
import zlib
import multiprocessing
import logging

from androguard.core import androconf
from androguard.core.bytecodes import apk, dvm, axml
from androguard.core.analysis import analysis
#from androguard.util import read
from androguard.util import readFile as read

l = logging.getLogger("androguard.auto")  #给log一个名字


class AndroAuto:
    """
    The main class which analyse automatically android apps by calling methods
    from a specific object

    Automatic analysis requires two objects to be created:

    1) a Logger, found at key `log` in the settings
    2) an Analysis runner, found at key `my` in the settings

    Both are passed to :class:`AndroAuto` via a dictionary.
    The setting dict understands the following keys:

    * `my`: The Analysis runner (required)
    * `log`: The Logger
    * `max_fetcher`: Maximum number of concurrent threads

    :class:`DefaultAndroLog` can be used as a baseclass for the Logger, while
    :class:`DefaultAndroAnalysis` can be used a baseclass for the Analysis.
    There is also :class:`DirectoryAndroAnalysis` which implements a `fetcher`
    which recursively reads a directory for files and can be used a baseclass as
    well.

    example::

        from androguard.core.analysis import auto

        class AndroTest(auto.DirectoryAndroAnalysis):
            # This is the Test Runner
            def analysis_app(self, log, apkobj, dexobj, analysisobj):
                # Just print all objects to stdout
                print(log.id_file, log.filename, apkobj, dexobj, analysisobj)

        settings = {
            # The directory `some/directory` should contain some APK files
            "my": AndroTest('some/directory'),
            # Use the default Logger
            "log": auto.DefaultAndroLog,
            # Use maximum of 2 threads
            "max_fetcher": 2,
        }

        aa = auto.AndroAuto(settings)
        aa.go()

    :param settings: the settings of the analysis
    :type settings: dict
    """

    def __init__(self, settings):
        if not "my" in settings:
            raise ValueError("'my' object not found in settings!")

        if not "log" in settings:
            raise ValueError("'log' object not found in settings!")

        if not "max_fetcher" in settings:
            settings["max_fetcher"] = multiprocessing.cpu_count()
            l.warning("No maximum number of threads found, setting MAX_CPU: {}".format(settings["max_fetcher"]))

        self.settings = settings

    def dump(self):
        """
        Dump the analysis

        Calls `dump()` on the Analysis object
        """
        self.settings["my"].dump()

    def dump_file(self, filename):
        """
        Dump the analysis into a file

        Calls `dump_file(filename)` on the Analysis object
        """
        self.settings["my"].dump_file(filename)

    def go(self):
        """
        Launch the analysis.

        this will start a total of `max_fetcher` threads.   max_fetcher用来设置最大线程数
        """
        myandro = self.settings["my"]
        #print("aa.goingaa.goingaa.goingaa.goingaa.goingaa.goingaa.going")
        def worker(idx, q):
            """
            Worker Thread
            """
            l.debug("Running worker-%d" % idx)
            
            while True:
                a, d, dx, axmlobj, arscobj = None, None, None, None, None
                try:  
                    filename, fileraw = q.get()
                    id_file = zlib.adler32(fileraw)

                    l.debug("(worker-%d) get %s %d" % (idx, filename, id_file))

                    # FIXME: If the try/catch crashes before this line, there
                    # will be no logf to put into finish.
                    logf = self.settings["log"](id_file, filename)  #这个logf是一个DefaultAndroLog类
                    #print(logf)

                    is_analysis_dex, is_analysis_adex = True, True
                    l.debug("(worker-%d) filtering file %d" % (idx, id_file))
                    # TODO: This information should probably also go into the logf?
                    filter_file_ret, filter_file_type = myandro.filter_file(logf, fileraw)
                    #print(filter_file_ret)
                    #print("before filter_file_ret")
                    if filter_file_ret:
                        #print("filter_file_ret")
                        l.debug("(worker-%d) analysis %s" % (id_file, filter_file_type))
                        
                        if filter_file_type == "SO":
                            pass
                            #print("Found a so file")
                            

                        if filter_file_type == "APK":
                            
                            a = myandro.create_apk(logf, fileraw)
                            
                            is_analysis_dex = myandro.analysis_apk(logf, a)
                            #path =os.path.dirname(apk.__file__)   #apk模块在D盘
                            #print(path)
                            #print(is_analysis_dex)#  is_analysis_dex == TRUE
                            # TODO: Support multidex here
                            #print(type(a))
                            fileraw = a.get_dex()  # get_dex 返回dex的raw data
                            #print(type(fileraw))
                            #这里是有问题的，应该调用get_all_dex但这个函数不能这样直接调用
                            #filerawGen = a.get_all_dex()
                           
                            #print(type(fileraw))
                            
                            filter_file_type = androconf.is_android_raw(fileraw)
                            #print(filter_file_type)  #filter_file_type == DEX
                            
                            #判断是APK文件，获取dex文件的raw data
                            

                        elif filter_file_type == "AXML":
                            
                            axmlobj = myandro.create_axml(logf, fileraw)
                            # TODO: the return value of analysis_axml is not checked
                            myandro.analysis_axml(logf, axmlobj)

                        elif filter_file_type == "ARSC":
                            
                            arscobj = myandro.create_arsc(logf, fileraw)
                            # TODO: the return value of analysis_arsc is not checked
                            myandro.analysis_arsc(logf, arscobj)

                        if is_analysis_dex and filter_file_type == "DEX":
                        #这里是成立的，要执行这个IF语句
                            #print("DEXDEXDEXDEXDEX")
                            d = myandro.create_dex(logf, fileraw)
                            #生成d对象
                            # create_dex:  return dvm.DalvikVMFormat(dexraw)
                            #print(type(d))  #type d DalvikVMFormat
                            
                            is_analysis_adex = myandro.analysis_dex(logf, d)
                            #print(is_analysis_adex)  #is_analysis_adex == TRUE
                            #这里只是为了指明，应当生成analysis对象
                            #具体的生成过程在下面实现
                            
                            
                        elif is_analysis_dex and filter_file_type == "DEY":
                            
                            
                            d = myandro.create_dey(logf, fileraw)
                            is_analysis_adex = myandro.analysis_dey(logf, d)

                        if is_analysis_adex and d:
                        #这里是成立的，要执行这个IF语句
                           
                            
                            # TODO: Support multidex here
                            
                            dx = myandro.create_adex(logf, d)
                            #生成dx对象
                            #print(type(dx))  # dx class 'androguard.core.analysis.analysis.Analysis
                            #变为多dex分析
                            #for raw_data in a.get_all_dex():
                            #    d = myandro.create_dex(logf, raw_data)
                            #    dx.add(d)
                            # TODO: The return value of analysis_adex is not checked
                            myandro.analysis_adex(logf, dx)
                            #print(myandro.analysis_adex(logf, dx))  #True

                        # TODO: this is called also if AXML or ARSC is set...
                            
                        myandro.analysis_app(logf, a, d, dx)
                            #转到自己实现的analysis_app函数
                            
                        myandro.finish(logf)    

                except Exception as why:
                    #print("find a so file")
                    myandro.crash(logf, why)
                    
                    # FIXME: finish is called here in any case of an exception
                    # but is only called if filter_file_ret is true above.
                    myandro.finish(logf)

                del a, d, dx, axmlobj, arscobj
                q.task_done()
        
        q = queue.Queue(self.settings["max_fetcher"])  #设置队列最大长度为max_fetcher，默认为2

        for i in range(self.settings["max_fetcher"]):
            t = threading.Thread(target=worker, args=[i, q])  #target是回调函数，arg是该函数对于的参数
            t.daemon = True   #设置daemon=True会标记其为守护线程，如果剩下的线程只有守护线程时，整个python程序都会退出
           
            t.start()  #启动线程

        # FIXME: Busy waiting with sleep...
        terminated = True
        
        while terminated:
            terminated = myandro.fetcher(q)
            
            try:
                if terminated:
                    time.sleep(10)
            except KeyboardInterrupt:
                terminated = False
        
        q.join()  #阻塞，直到完成所有任务
       


class DefaultAndroAnalysis:
    """
    This class can be used as a template in order to analyse apps  此类可用作模板，以便分析应用程序

    The order of methods called in this class is the following:  此类中调用的方法顺序如下：

    * :meth:`fetcher` is called to get files  “fetcher”被调用以获取文件  
    * :meth:`filter_file` is called to get the filetype   “filter_file”被调用以获取文件类型
    * :meth:`create_apk` or :meth:`create_axml` or :meth:`create_arsc` and
      :meth:`create_dex` or :meth:`create_dey` depending on the filetype   取决于文件类型调用不同函数
    * :meth:`analysis_apk` or :meth:`analysis_axml` or :meth:`analysis_arsc` and
      :meth:`analysis_dex` or :meth:`analysis_dey` depending on the filetype  取决于文件类型调用不同函数
    * :meth:`create_adex` if at least one dex was found  如果至少找到一个索引
    * :meth:`analysis_app` with all the gathered objects so far       到目前为止收集的所有对象
    * :meth:`finish` is called in any case after the analysis    在分析后的任何情况下都会调用

    :meth:`crash` can be called during analysis if any Exception happens.    可以在分析期间调用，如果发生任何异常。
    """

    def fetcher(self, q):
        """
        This method is called to fetch a new app in order to analyse it. The queue         调用此方法以获取新应用程序，以便对其进行分析。
        must be fill with the following format: (filename, raw)

        must return False if the queue is filled, thus all files are read.

        :param q: the Queue to put new app
        """
        return False

    def filter_file(self, log, fileraw):
        """
        This method is called in order to filer a specific app

        :param log: an object which corresponds to a unique app
        :param bytes fileraw: the raw file as bytes
        :rtype: a tuple with 2 elements, the return value (boolean) if it is necessary to
                continue the analysis and the file type
        """
        file_type = androconf.is_android_raw(fileraw)
        #print(file_type) #None
        if file_type in ["APK", "DEX", "DEY", "AXML", "ARSC"]:
            return True, file_type
        return False, None
    
    def create_so(self, log, fileraw):
        
        print("Here is the analysis of So files")
        
        """
        Here is the analysis of So files
        nm  符号
        strings   字符串
        
        把对应信息写入到txt文件中
        
        """
        pass

    def create_axml(self, log, fileraw):
        """
        This method is called in order to create a new AXML object

        :param log: an object which corresponds to a unique app
        :param fileraw: the raw axml (a string)
        :rtype: an :class:`~androguard.core.bytecodes.axml.AXMLPrinter` object
        """
        return axml.AXMLPrinter(fileraw)

    def create_arsc(self, log, fileraw):
        
        """
        This method is called in order to create a new ARSC object

        :param log: an object which corresponds to a unique app
        :param fileraw: the raw arsc (a string)

        :rtype: an :class:`~androguard.core.bytecodes.axml.ARSCParser` object
        """
        
        return axml.ARSCParser(fileraw)

    def create_apk(self, log, fileraw):
        """
        This method is called in order to create a new APK object

        :param log: an object which corresponds to a unique app
        :param fileraw: the raw apk (a string)

        :rtype: an :class:`~androguard.core.bytecodes.apk.APK` object
        """
        return apk.APK(fileraw, raw=True)

    def create_dex(self, log, dexraw):
        """
        This method is called in order to create a DalvikVMFormat object

        :param log: an object which corresponds to a unique app
        :param dexraw: the raw classes.dex (a string)

        :rtype: a :class:`~androguard.core.bytecodes.dvm.DalvikVMFormat` object
        """
        #path =os.path.dirname(dvm.__file__)
        #print(path)   #在D盘
        return dvm.DalvikVMFormat(dexraw)

    def create_dey(self, log, dexraw):
        """
        This method is called in order to create a DalvikOdexVMFormat object

        :param log: an object which corresponds to a unique app
        :param dexraw: the raw odex file (a string)

        :rtype: a :class:`~androguard.core.bytecodes.dvm.DalvikOdexVMFormat` object
        """
        return dvm.DalvikOdexVMFormat(dexraw)

    def create_adex(self, log, dexobj):
        """
        This method is called in order to create an Analysis object
        调用此方法是为了创建Analysis对象

        :param log: an object which corresponds to a unique app
        :param androguard.core.bytecodes.dvm.DalvikVMFormat dexobj: a :class:`DalvikVMFormat` object

        :rytpe: a :class:`~androguard.core.analysis.analysis.Analysis` object
        """
        
        vm_analysis = analysis.Analysis(dexobj)
        #print(type(vm_analysis))  #vm_analysis是Analysis对象
        #print("创建analysis对象")
        #print(len(vm_analysis.classes))
        vm_analysis.create_xref()
        #print("为analysis对象创建引用")
        #print(len(vm_analysis.classes))
        return vm_analysis

    def analysis_axml(self, log, axmlobj):
        """
        This method is called in order to know if the analysis must continue

        :param log: an object which corresponds to a unique app
        :param androguard.core.bytecodes.axml.AXMLPrinter axmlobj: a :class:`AXMLPrinter` object

        :returns: True if the analysis should continue afterwards
        :rtype: bool
        """
        return True

    def analysis_arsc(self, log, arscobj):
        """
        This method is called in order to know if the analysis must continue

        :param log: an object which corresponds to a unique app
        :param androguard.core.bytecodes.axml.ARSCParser arscobj: a :class:`ARSCParser` object

        :returns: True if the analysis should continue afterwards
        :rtype: bool
        """
        return True

    def analysis_apk(self, log, apkobj):
        """
        This method is called in order to know if the analysis must continue

        :param log: an object which corresponds to a unique app
        :param androguard.core.bytecodes.apk.APK apkobj: a :class:`APK` object

        :returns: True if a DEX file should be analyzed as well
        :rtype: bool
        """
        return True

    def analysis_dex(self, log, dexobj):
        """
        This method is called in order to know if the analysis must continue
        调用此方法是为了知道是否必须继续分析
        
        :param log: an object which corresponds to a unique app
        :param androguard.core.bytecodes.dvm.DalvikVMFormat dexobj: a :class:`DalvikVMFormat` object

        :returns: True if the analysis should continue with an analysis.Analysis
        :rtype: 
        
        """
        
        return True

    def analysis_dey(self, log, deyobj):
        """
        This method is called in order to know if the analysis must continue

        :param log: an object which corresponds to a unique app
        :param androguard.core.bytecodes.dvm.DalvikOdexVMFormat deyobj: a :class:`DalvikOdexVMFormat` object

        :returns: True if the analysis should continue with an analysis.Analysis
        :rtype: bool
        """
        return True

    def analysis_adex(self, log, adexobj):
        """
        This method is called in order to know if the analysis must continue

        :param log: an object which corresponds to a unique app
        :param androguard.core.analysis.analysis.Analysis adexobj: a :class:`Analysis` object

        :rtype: a boolean
        """
        return True

    def analysis_app(self, log, apkobj, dexobj, adexobj):
        """
        This method is called if you wish to analyse the final app

        :param log: an object which corresponds to a unique app
        :param androguard.core.bytecodes.apk.APK apkobj: a :class:`APK` object
        :param androguard.core.bytecodes.dvm.DalvikVMFormat dexobj: a :class:`DalvikVMFormat` object
        :param androguard.core.analysis.analysis.Analysis adexobj: a :class:`Analysis` object
        """
        pass

    def finish(self, log):
        """
        This method is called before the end of the analysis

        :param log: an object which corresponds to an unique app
        """
        pass

    def crash(self, log, why):
        """
        This method is called if a crash happens

        :param log: an object which corresponds to an unique app
        :param why: the exception
        """
        pass

    def dump(self):
        """
        This method is called to dump the result
        """
        pass

    def dump_file(self, filename):
        """
        This method is called to dump the result in a file

        :param filename: the filename to dump the result
        """
        pass


class DirectoryAndroAnalysis(DefaultAndroAnalysis):    #继承DefaultAndroAnalysis      需要一个directory参数              具体实现了fetcher
    """
    A simple class example to analyse a whole directory with many APKs in it
    获取一个目录下的所有apk文件
    """

    def __init__(self, directory):
        self.directory = directory

    def fetcher(self, q):
        for root, dirs, files in os.walk(self.directory, followlinks=True):   #root返回当前目录 即directory     dirs返回当前目录下的子目录，list    files返回当前目录下的所有文件。list
            for f in files:
                real_filename = os.path.join(root, f)        #拼接生成文件的全路径
                q.put((real_filename, read(real_filename)))  #put 入队             read   二进数文件返回 BYTE     非二进制文件返回str
        return False




    """
    fetcher要进行修改，要求用户把每个apk都单独放在一个文件夹中，我们会为每个app生成一个分析报告，并放在相应文件家中，app中若有so文件存在，请手动提取so文件并与app放在同一目录下
    然后分别对每个子文件夹使用原fetcher
    此部分修改在myaotu文件中实现
    """
   
    
            
class DefaultAndroLog:
    """
    A base class for the Androguard Auto Logger.

    The Logger contains two attributes of the analyzed File: :py:attr:`filename`
    and :py:attr:`id_file`, which is the Adler32 Checksum of the file.

    The Logger can be extended to contain more attributes.
    """
    def __init__(self, id_file, filename):
        self.id_file = id_file
        self.filename = filename

    def __str__(self):
        return "<AutoLog {:08x} '{}'>".format(self.id_file, self.filename)

