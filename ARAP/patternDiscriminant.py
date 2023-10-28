#Anti-Emulator Part A B C D E F G H I J K L M N O P Q
#↓-------------OLD——————————————————————————————————————————————————————————————
AntiEmulatorClassesc1 = "Ljava/lang/Class;"
AntiEmulatorClassesc2 = "Ljava/lang/reflect/Method;"
AntiEmulatorClassesc3 = "Landroid/os/Build;"
AntiEmulatorClassesc4 = "Landroid/os/Process;"
AntiEmulatorClassesc5 = "Ljava/lang/Runtime;"
AntiEmulatorClassesc6 = "Ljava/lang/System;"
AntiEmulatorClassesc7 = "Landroid/app/ActivetyManager;"

AntiEmulatorMethodsm1 = "Landroid/app/ActivityManager.isUserAMonkey"
AntiEmulatorMethodsm2 = "Ljava/lang/Class.forName"
AntiEmulatorMethodsm3 = "Ljava/lang/Class.getMethod"
AntiEmulatorMethodsm4 = "Ljava/lang/reflect/Method.invoke"
AntiEmulatorMethodsm5 = "Ljava/lang/Runtime.getRuntime"
AntiEmulatorMethodsm6 = "Ljava/lang/Runtime.exec"
#↑-------------OLD——————————————————————————————————————————————————————————————


AntiEmulatorMethodsm7 = "Landroid/telephony/TelephonyManager.getDeviceID"
AntiEmulatorMethodsm8 = "Landroid/telephony/TelephonyManager.getLine1Number"
AntiEmulatorMethodsm9 = "Landroid/telephony/TelephonyManager.getNetworkCountryIso"
AntiEmulatorMethodsm10 = "Landroid/telephony/TelephonyManager.getNetworkType"
AntiEmulatorMethodsm11 = "Landroid/telephony/TelephonyManager.getNetworkOperator"
AntiEmulatorMethodsm12 = "Landroid/telephony/TelephonyManager.getPhoneType"
AntiEmulatorMethodsm13 = "Landroid/telephony/TelephonyManager.getSimCountryIso"
AntiEmulatorMethodsm14 = "Landroid/telephony/TelephonyManager.getSimSerialNumber"
AntiEmulatorMethodsm15 = "Landroid/telephony/TelephonyManager.getSubscriberId"
AntiEmulatorMethodsm16 = "Landroid/telephony/TelephonyManager.getVoiceMailNumber"
AntiEmulatorMethodsm17 = "Landroid/telephony/TelephonyManager.getNetworkOperatorName"

TelephonyManagerA = [eval("AntiEmulatorMethodsm"+str(i)) for i in range(7,18)]

'''
AntiEmulatorTelephonyManagerDiscriminant

A m7-16 Telephony manager related methods  待改进
B 用于比较的相关字符串  在下面 AntiEmulatorEmulatorDeviceIdentifierDiscriminant
C 用于比较的相关字符串 要求全部出现
A AND （B or C）
'''

#↓-------------OLD——————————————————————————————————————————————————————————————
AntiEmulatorAttributesa1 = "Landroid/os/Build.HARDWARE"
AntiEmulatorAttributesa2 = "Landroid/os/Build.BOARD"
AntiEmulatorAttributesa3 = "Landroid/os/Build.BRAND"
AntiEmulatorAttributesa4 = "Landroid/os/Build.DEVICE"
AntiEmulatorAttributesa5 = "Landroid/os/Build.FINGERPRINT"
AntiEmulatorAttributesa6 = "Landroid/os/Build.MODEL"
AntiEmulatorAttributesa7 = "Landroid/os/Build.MANUFACTURER"
AntiEmulatorAttributesa8 = "Landroid/os/Build.PRODUCT"
#↑-------------OLD——————————————————————————————————————————————————————————————

#↓-------------OLD——————————————————————————————————————————————————————————————
AntiEmulatorStringsJavas1 = "android.os.SystemProperties"
AntiEmulatorStringsJavas2 = "getprop"
AntiEmulatorStringsJavas3 = "ro.hardware"
AntiEmulatorStringsJavas4 = "ro.boot.hardware"
AntiEmulatorStringsJavas5 = "ro.kernel.androidboot.hardware"
AntiEmulatorStringsJavas6 = "ro.board"
AntiEmulatorStringsJavas7 = "ro.board.platform"
AntiEmulatorStringsJavas8 = "ro.product.brand"
AntiEmulatorStringsJavas9 = "ro.product.device"
AntiEmulatorStringsJavas10 = "ro.cm.device"
AntiEmulatorStringsJavas11 = "ro.bootimage.build.fingerprint"
AntiEmulatorStringsJavas12 = "ro.build.fingerprint"
AntiEmulatorStringsJavas13 = "ro.product.manufacturer"
AntiEmulatorStringsJavas14 = "ro.product.model"
AntiEmulatorStringsJavas15 = "goldfish"
AntiEmulatorStringsJavas16 = "ranchu"
AntiEmulatorStringsJavas17 = "vbox86"
AntiEmulatorStringsJavas18 = "ttVM_x86"
AntiEmulatorStringsJavas19 = "unknown"
AntiEmulatorStringsJavas20 = "generic"
AntiEmulatorStringsJavas21 = "nox"
AntiEmulatorStringsJavas22 = "FRF91"
AntiEmulatorStringsJavas23 = "google_sdk"
AntiEmulatorStringsJavas24 = "generic_x86"
AntiEmulatorStringsJavas25 = "generic_x86_64"
AntiEmulatorStringsJavas26 = "Andy"
AntiEmulatorStringsJavas27 = "Droid4X"
AntiEmulatorStringsJavas28 = "vbox"
AntiEmulatorStringsJavas29 = "Genymotion"

AntiEmulatorStringsJavas30 = "ro.kernel.qemu"
AntiEmulatorStringsJavas31 = "qemud"
AntiEmulatorStringsJavas32 = "qemu.sf.lcd_density"
AntiEmulatorStringsJavas33 = "qemu.hw.mainkeys"
AntiEmulatorStringsJavas34 = "qemu.sf.fake_camera"
AntiEmulatorStringsJavas35 = "/dev/socket/qemud"
AntiEmulatorStringsJavas36 = "/dev/qemu_pipe"
AntiEmulatorStringsJavas37 = "/system/lib/libc_malloc_debug_qemu.so"
AntiEmulatorStringsJavas38 = "/sys/qemu_trace"
AntiEmulatorStringsJavas39 = "/system/bin/qemu-props"
AntiEmulatorStringsJavas40 = "/dev/socket/genyd"
AntiEmulatorStringsJavas41 = "dev/socket/baseband_genyd"
AntiEmulatorStringsJavas42 = "ro.kernel.android.qemud"
AntiEmulatorStringsJavas43 = "ro.kernel.qemu.gles"
AntiEmulatorStringsJavas44 = "init.svc.qemud"
AntiEmulatorStringsJavas45 = "init.goldfish.rc"
AntiEmulatorStringsJavas46 = "init.svc.qemu-props"
#↑-------------OLD——————————————————————————————————————————————————————————————


#↓-------------OLD——————————————————————————————————————————————————————————————
AntiEmulatorStringsJavas47 = "qemu.hw.mainkeys"
AntiEmulatorStringsJavas48 = "ro.radio.use-ppp"

AntiEmulatorStringsNatives1 = "ro.hardware"
AntiEmulatorStringsNatives2 = "ro.boot.hardware"
AntiEmulatorStringsNatives3 = "ro.board.platform"
AntiEmulatorStringsNatives4 = "ro.product.brand"
AntiEmulatorStringsNatives5 = "ro.board.platform"
AntiEmulatorStringsNatives6 = "ro.product.brand"
AntiEmulatorStringsNatives7 = "ro.product.device"
AntiEmulatorStringsNatives8 = "ro.cm.device"
AntiEmulatorStringsNatives9 = "ro.bootimage.build.fingerprint"
AntiEmulatorStringsNatives10 = "ro.build.fingerprint"
AntiEmulatorStringsNatives11 = "ro.product.manufacturer"
AntiEmulatorStringsNatives12 = "ro.product.model"
AntiEmulatorStringsNatives13 = "goldfish"
AntiEmulatorStringsNatives14 = "ranchu"
AntiEmulatorStringsNatives15 = "vbox86"
AntiEmulatorStringsNatives16 = "ttVM_x86"
AntiEmulatorStringsNatives17 = "unknown"
AntiEmulatorStringsNatives18 = "generic"
AntiEmulatorStringsNatives19 = "nox"
AntiEmulatorStringsNatives20 = "FRF91"
AntiEmulatorStringsNatives21 = "google_sdk"
AntiEmulatorStringsNatives22 = "generic_x86"
AntiEmulatorStringsNatives23 = "generic_x86_64"
AntiEmulatorStringsNatives24 = "Andy"
AntiEmulatorStringsNatives25 = "Droid4X"
AntiEmulatorStringsNatives26 = "vbox"
AntiEmulatorStringsNatives27 = "Genymotion"

AntiEmulatorStringsNatives28 = "ro.kernel.qemu"
AntiEmulatorStringsNatives29 = "qemud"
AntiEmulatorStringsNatives30 = "qemu.sf.lcd_density"
AntiEmulatorStringsNatives31 = "qemu.hw.mainkeys"
AntiEmulatorStringsNatives32 = "qemu.sf.fake_camera"
AntiEmulatorStringsNatives33 = "/dev/socket/qemud"
AntiEmulatorStringsNatives34 = "/dev/qemu_pipe"
AntiEmulatorStringsNatives35 = "/system/lib/libc_malloc_debug_qemu.so"
AntiEmulatorStringsNatives36 = "/sys/qemu_trace"
AntiEmulatorStringsNatives37 = "/system/bin/qemu-props"
AntiEmulatorStringsNatives38 = "/dev/socket/genyd"
AntiEmulatorStringsNatives39 = "/dev/socket/baseband_genyd"
AntiEmulatorStringsNatives40 = "ro.kernel.android.qemud"
AntiEmulatorStringsNatives41 = "ro.kernel.qemu.gles"
AntiEmulatorStringsNatives42 = "init.svc.qemud"
AntiEmulatorStringsNatives43 = "init.goldfish.rc"
AntiEmulatorStringsNatives44 = "init.svc.qemu-props"
#↑-------------OLD——————————————————————————————————————————————————————————————

AntiEmulatorStringsNatives45 = "qemu.hw.mainkeys"
AntiEmulatorStringsNatives46 = "ro.radio.use-ppp"  
AntiEmulatorStringsNatives47 = "/proc/self/cgroup"
#AntiEmulatorStrings49 = "android_id"

#AntiEmulatorStrings50 = "Emulator"
AntiEmulatorStrings51 ="/dev/socket/genyd"
AntiEmulatorStrings52 ="/dev/socket/baseband_genyd"

EmulatorPKG_NAMES = ["com.mumu.launcher", "com.ami.duosupdater.ui", "com.ami.launchmetro", "com.ami.syncduosservices", "com.bluestacks.home", "com.bluestacks.windowsfilemanager", "com.bluestacks.settings", "com.bluestacks.bluestackslocationprovider", "com.bluestacks.appsettings", "com.bluestacks.bstfolder", "com.bluestacks.BstCommandProcessor", "com.bluestacks.s2p", "com.bluestacks.setup", "com.bluestacks.appmart", "com.kaopu001.tiantianserver", "com.kpzs.helpercenter", "com.kaopu001.tiantianime", "com.android.development_settings", "com.android.development", "com.android.customlocale2", "com.genymotion.superuser", "com.genymotion.clipboardproxy", "com.uc.xxzs.keyboard", "com.uc.xxzs", "com.blue.huang17.agent", "com.blue.huang17.launcher", "com.blue.huang17.ime", "com.microvirt.guide", "com.microvirt.market", "com.microvirt.memuime", "cn.itools.vm.launcher", "cn.itools.vm.proxy", "cn.itools.vm.softkeyboard", "cn.itools.avdmarket", "com.syd.IME", "com.bignox.app.store.hd", "com.bignox.launcher", "com.bignox.app.phone", "com.bignox.app.noxservice", "com.android.noxpush", "com.haimawan.push", "me.haima.helpcenter", "com.windroy.launcher", "com.windroy.superuser", "com.windroy.launcher", "com.windroy.ime", "com.android.flysilkworm", "com.android.emu.inputservice", "com.tiantian.ime", "com.microvirt.launcher", "me.le8.androidassist", "com.vphone.helper", "com.vphone.launcher", "com.duoyi.giftcenter.giftcenter"]
AntiEmulatorStrings53 = "com.bignox.app"
AntiEmulatorStrings54 = "com.bluestacks"
AntiEmulatorStrings55 = "com.google.android.launcher.layouts.genymotion"
Emulatorg = ["ueventd.android_x86.rc", "x86.prop", "ueventd.ttVM_x86.rc", "init.ttVM_x86.rc", "fstab.ttVM_x86", "fstab.vbox86", "init.vbox86.rc", "ueventd.vbox86.rc"]
Emulatorh = ["fstab.andy", "ueventd.andy.rc","androVM.vbox_dpi","ro.genymotion.version"]
Emulatori = ["fstab.nox", "init.nox.rc", "ueventd.nox.rc", "/BigNoxGameHD", "/YSLauncher"]
EmulatorApp = ["com.ami.duosupdater.ui", "com.ami.launchmetro", "com.ami.syncduosservices", "com.bluestacks.home", "com.bluestacks.windowsfilemanager", "com.bluestacks.settings", "com.bluestacks.bluestackslocationprovider", "com.bluestacks.appsettings", "com.bluestacks.bstfolder", "com.bluestacks.BstCommandProcessor", "com.bluestacks.s2p", "com.bluestacks.setup", "com.kaopu001.tiantianserver", "com.kpzs.helpercenter", "com.kaopu001.tiantianime", "com.android.development_settings", "com.android.development", "com.android.customlocale2", "com.genymotion.superuser", "com.genymotion.clipboardproxy", "com.uc.xxzs.keyboard", "com.uc.xxzs", "com.blue.huang17.agent", "com.blue.huang17.launcher", "com.blue.huang17.ime", "com.microvirt.guide", "com.microvirt.market", "com.microvirt.memuime", "cn.itools.vm.launcher", "cn.itools.vm.proxy", "cn.itools.vm.softkeyboard", "cn.itools.avdmarket", "com.syd.IME", "com.bignox.app.store.hd", "com.bignox.launcher", "com.bignox.app.phone", "com.bignox.app.noxservice", "com.android.noxpush", "com.haimawan.push", "me.haima.helpcenter", "com.windroy.launcher", "com.windroy.superuser", "com.windroy.launcher", "com.windroy.ime", "com.android.flysilkworm", "com.android.emu.inputservice", "com.tiantian.ime", "com.microvirt.launcher", "me.le8.androidassist", "com.vphone.helper", "com.vphone.launcher", "com.duoyi.giftcenter.giftcenter"]
Emulatorexa = EmulatorPKG_NAMES + Emulatorg + Emulatorh + Emulatori + EmulatorApp

Emulatorexa = list(set(Emulatorexa))

AntiEmulatorStrings56 = "ranchu,goldfish,vbox"
AntiEmulatorStrings57 = "generic,vbox"
AntiEmulatorStrings58 = "Genymotion"

EmulatorRelatedStringsAndSystemPropertiesA = [AntiEmulatorStringsJavas1,AntiEmulatorStringsJavas2]
EmulatorRelatedStringsAndSystemPropertiesB = [eval("AntiEmulatorStringsJavas"+str(i)) for i in range(3,15)]
EmulatorRelatedStringsAndSystemPropertiesC = [eval("AntiEmulatorStringsJavas"+str(i)) for i in range(15,19)] + [eval("AntiEmulatorStringsJavas"+str(i)) for i in range(21,30)] + [eval("AntiEmulatorStringsJavas"+str(i)) for i in range(47,49)]
EmulatorRelatedStringsAndSystemPropertiesD = [eval("AntiEmulatorStringsJavas"+str(i)) for i in range(30,47)]
EmulatorRelatedStringsAndSystemPropertiesE = [AntiEmulatorMethodsm1]
EmulatorRelatedStringsAndSystemPropertiesF = [eval("AntiEmulatorStringsNatives"+str(i)) for i in range(1,13)] + [eval("AntiEmulatorStringsNatives"+str(i)) for i in range(45,47)]
EmulatorRelatedStringsAndSystemPropertiesG = [eval("AntiEmulatorStringsNatives"+str(i)) for i in range(13,17)] + [eval("AntiEmulatorStringsNatives"+str(i)) for i in range(19,28)]
EmulatorRelatedStringsAndSystemPropertiesH = [eval("AntiEmulatorStringsNatives"+str(i)) for i in range(28,45)]
EmulatorRelatedStringsAndSystemPropertiesH.append(AntiEmulatorStringsNatives47)
EmulatorRelatedStringsAndSystemPropertiesH.append("cat /proc/self/cgroup")
#EmulatorRelatedStringsAndSystemPropertiesC.append(AntiEmulatorStrings49)
#EmulatorRelatedStringsAndSystemPropertiesC.append(AntiEmulatorStrings50)
EmulatorRelatedStringsAndSystemPropertiesH.append(AntiEmulatorStrings51)
EmulatorRelatedStringsAndSystemPropertiesH.append(AntiEmulatorStrings52)
EmulatorRelatedStringsAndSystemPropertiesH.append(AntiEmulatorStrings53)
EmulatorRelatedStringsAndSystemPropertiesH.append(AntiEmulatorStrings54)
EmulatorRelatedStringsAndSystemPropertiesH.append(AntiEmulatorStrings55)

EmulatorRelatedStringsAndSystemPropertiesH = EmulatorRelatedStringsAndSystemPropertiesH + Emulatorexa
EmulatorRelatedStringsAndSystemPropertiesI = [AntiEmulatorStrings56,AntiEmulatorStrings57,AntiEmulatorStrings58]
'''
AntiEmulatorEmulatorRelatedStringsAndSystemPropertiesDiscriminant
A s1-2 “Android.os.SystemProperties” or “getprop”
B s3-14 Strings for getting smartphone properties
C s15-18 s21-29 47-48 string for comparison of properties
D javas30-46 emulator related strings
E m1 the isUserAMonkey method
F natives1-12 45-46 strings for getting properties
G natives13-16 s19-27 string for comparison of properties
H natives28-44 emulator related strings

(A∧B∧C)V(D∨E)∨((F∧G)∨H)  
'''

AntiEmulatorHardwareComponentsStringsJavaAndNatives1 = "/proc/cpuinfo"
AntiEmulatorHardwareComponentsStringsJavaAndNatives2 = "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"
AntiEmulatorHardwareComponentsStringsJavaAndNatives3 = "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"
AntiEmulatorHardwareComponentsStringsJavaAndNatives4 = "/proc/uid_stat"
AntiEmulatorHardwareComponentsStringsJavaAndNatives5 = "/sys/devices/virtual/ppp"
AntiEmulatorHardwareComponentsStringsJavaAndNatives6 = "/sys/devices/virtual/switch"
AntiEmulatorHardwareComponentsStringsJavaAndNatives7 = "/sys/module/alarm/parameters"
AntiEmulatorHardwareComponentsStringsJavaAndNatives8 = "/sys/devices/system/cpu/cpu0/cpufreq"
AntiEmulatorHardwareComponentsStringsJavaAndNatives9 = "/sys/devices/virtual/misc/android_adb"
AntiEmulatorHardwareComponentsStringsJavaAndNatives10 = "/proc/sys/net/ipv4/tcp_syncookies"
AntiEmulatorHardwareComponentsStringsJavaAndNatives11 = "net.eth0.dns1"

AntiEmulatorHardwareComponentsStringsJavaAndNatives12 = "/proc/misc"
AntiEmulatorHardwareComponentsStringsJavaAndNatives13 = "network_throughput"
AntiEmulatorHardwareComponentsStringsJavaAndNatives14 = "/proc/ioports"
AntiEmulatorHardwareComponentsStringsJavaAndNatives15 = "0ff\0:"
AntiEmulatorHardwareComponentsStringsJavaAndNatives16 = "/sys/devices/virtual/misc/cpu_dma_latency/uevent"
AntiEmulatorHardwareComponentsStringsJavaAndNatives17 = "MINOR=5"
AntiEmulatorHardwareComponentsStringsJavaAndNatives18 = "rild.libpath"
AntiEmulatorHardwareComponentsStringsJavaAndNatives19 = "/system/lib/libreference-ril.so"
AntiEmulatorHardwareComponentsStringsJavaAndNatives20 = "ro.build.display.id"
AntiEmulatorHardwareComponentsStringsJavaAndNatives21 = "test-"
AntiEmulatorHardwareComponentsStringsJavaAndNatives22 = "bluetooth"
AntiEmulatorHardwareComponentsStringsJavaAndNatives23 = "android.bluetooth.adapter.action.REQUEST_ENABLE"
AntiEmulatorHardwareComponentsMethodsm1 = "Landroid/bluetooth/BluetoothAdapter.getDefaultAdapter"
AntiEmulatorHardwareComponentsMethodsm2 = "Landroid/net/ConnectivityManager.isTetheringSupported"
AntiEmulatorHardwareComponentsMethodsm3 = "Landroid/content/Context.getSystemService"
AntiEmulatorHardwareComponentsMethodsm4 = "Landroid/net/wifi/WifiInfo.getMacAddress"
AntiEmulatorHardwareComponentsMethodsm5 = "Landroid/net/ConnectivityManager.getTetheredIfaces"
AntiEmulatorHardwareComponentsMethodsm6 = "Landroid/net/ConnectivityManager.getTetherableWifiRegexs"
AntiEmulatorHardwareComponentsMethodsm7 = "Landroid/bluetooth/BluetoothAdapter.enable"

AntiEmulatorHardwareComponentsStringsJavaAndNatives24 = "android.intent.action.BATTERY_CHANGED"
AntiEmulatorHardwareComponentsStringsJavaAndNatives25 = "plugged"

AntiEmulatorHardwareComponentsStringsJavaAndNatives26 = "android.os.SystemProperties"
AntiEmulatorHardwareComponentsStringsJavaAndNatives27 = "gsm.version.baseband"

AntiEmulatorHardwareComponentsStringsJavaAndNatives28 = "ro.product.board"
AntiEmulatorHardwareComponentsStringsJavaAndNatives29 = "ro.board.platform"
AntiEmulatorHardwareComponentsStringsJavaAndNatives30 = "ro.build.flavor"

HardwareComponentsMount = ["windows/InputMapper","vboxsf","nemusf","/mnt/shared/install_apk","/mnt/shell/emulated/0/Music sharefolder"]
HardwareComponentsExa = ["/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"]
HardwareComponentsA = [eval("AntiEmulatorHardwareComponentsStringsJavaAndNatives"+str(i)) for i in range(1,12)] 
HardwareComponentsA = HardwareComponentsMount + HardwareComponentsA + HardwareComponentsExa

HardwareComponentsB = [AntiEmulatorHardwareComponentsMethodsm1, AntiEmulatorHardwareComponentsStringsJavaAndNatives23, AntiEmulatorHardwareComponentsMethodsm7]
HardwareComponentsC = [AntiEmulatorHardwareComponentsStringsJavaAndNatives12,AntiEmulatorHardwareComponentsStringsJavaAndNatives13]
HardwareComponentsD = [AntiEmulatorHardwareComponentsStringsJavaAndNatives14,AntiEmulatorHardwareComponentsStringsJavaAndNatives15]
HardwareComponentsE = [AntiEmulatorHardwareComponentsStringsJavaAndNatives16,AntiEmulatorHardwareComponentsStringsJavaAndNatives17]
HardwareComponentsF = [AntiEmulatorHardwareComponentsMethodsm2, AntiEmulatorHardwareComponentsMethodsm5, AntiEmulatorHardwareComponentsMethodsm6]
HardwareComponentsG = [AntiEmulatorHardwareComponentsStringsJavaAndNatives18, AntiEmulatorHardwareComponentsStringsJavaAndNatives19]
HardwareComponentsH = [AntiEmulatorHardwareComponentsStringsJavaAndNatives20, AntiEmulatorHardwareComponentsStringsJavaAndNatives21, AntiEmulatorHardwareComponentsStringsJavaAndNatives22]
HardwareComponentsI = [AntiEmulatorHardwareComponentsMethodsm4]
HardwareComponentsJ = [AntiEmulatorHardwareComponentsStringsJavaAndNatives24, AntiEmulatorHardwareComponentsStringsJavaAndNatives25]
HardwareComponentsK = [AntiEmulatorHardwareComponentsStringsJavaAndNatives26, AntiEmulatorHardwareComponentsStringsJavaAndNatives27]
HardwareComponentsL = [AntiEmulatorHardwareComponentsStringsJavaAndNatives28, AntiEmulatorHardwareComponentsStringsJavaAndNatives29, AntiEmulatorHardwareComponentsStringsJavaAndNatives30]

'''
AntiEmulatorHardwareComponentsDiscriminant
A s1-11 Hardware components related strings
B m1 Get the bluetooth   若getDefaultAdapter和android.bluetooth.adapter同时存在，则不是反分析手段，若只出现getDefaultAdapter则为反分析
C boths12-13 /proc/misc
D boths14-15 /proc/ioports
E boths16-17 /sys/devices/virtual/misc/cpu_dma_latency/uevent
F m2 m5 m6 Tethering  
G boths18-19 rild.libpath
H boths20-22 ro.build.display.id

J s24 and s25 查询电量
K s26 and s27 查询基带
L s28-30 cpu型号\主板平台\系统的发行版本

A∨B∨C∨D∨E∨F∨G∨H∨(K and L)  #去掉J B F
'''

AntiEmulatorStringsJavas50 = "15555215554"
AntiEmulatorStringsJavas51 = "15555215556"
AntiEmulatorStringsJavas52 = "15555215558"
AntiEmulatorStringsJavas53 = "15555215560"
AntiEmulatorStringsJavas54 = "15555215562"
AntiEmulatorStringsJavas55 = "15555215564"
AntiEmulatorStringsJavas56 = "15555215566"
AntiEmulatorStringsJavas57 = "15555215568"
AntiEmulatorStringsJavas58 = "15555215570"
AntiEmulatorStringsJavas59 = "15555215572"
AntiEmulatorStringsJavas60 = "15555215574"
AntiEmulatorStringsJavas61 = "15555215576"
AntiEmulatorStringsJavas62 = "15555215578"
AntiEmulatorStringsJavas63 = "15555215580"
AntiEmulatorStringsJavas64 = "15555215582"
AntiEmulatorStringsJavas65 = "15555215584"
AntiEmulatorStringsJavas66 = "000000000000000"
AntiEmulatorStringsJavas67 = "310260000000000"

AntiEmulatorStringsJavas81 = "10.0.2.1"
AntiEmulatorStringsJavas82 = "10.0.2.2"
AntiEmulatorStringsJavas83 = "10.0.2.3"
AntiEmulatorStringsJavas84 = "10.0.2.4"
AntiEmulatorStringsJavas85 = "10.0.2.5"
AntiEmulatorStringsJavas86 = "10.0.2.6"
AntiEmulatorStringsJavas87 = "10.0.2.15"
AntiEmulatorStringsJavas88 = "10.0.3.2"
AntiEmulatorStringsJavas89 = "android.hardware.telephony"
AntiEmulatorStringsJavas90 = "wlan0"
AntiEmulatorStringsJavas91 = "tunl0"
AntiEmulatorStringsJavas92 = "eth0"

AntiEmulatorStringsJavas93 = "e21833235b6eef10"
AntiEmulatorStringsJavas94 =  "012345678912345"
TelephonyManagerB = [eval("AntiEmulatorStringsJavas"+str(i)) for i in range(81,89)] 
TelephonyManagerC = [eval("AntiEmulatorStringsJavas"+str(i)) for i in range(89,93)] 
DeviceIdentifierA = [eval("AntiEmulatorStringsJavas"+str(i)) for i in range(50,68)] 
DeviceIdentifierA.append(AntiEmulatorStringsJavas93)
DeviceIdentifierA.append(AntiEmulatorStringsJavas94)

TelephonyManagerB = TelephonyManagerB + DeviceIdentifierA

"""
AntiEmulatorEmulatorDeviceIdentifierDiscriminant

A javas50-67 Emulator Default device identifier

A

"""

AntiEmulatorSensorInformation1 = "Landroid/hardware/SensorManager.getDefaultSensor"
AntiEmulatorSensorInformation2 = "Landroid/hardware/SensorManager.registerListener"
AntiEmulatorSensorInformation3 = "lio/fabric/sdk/android/services/common/commonutils.getproximitysensorenabled"
AntiEmulatorSensorInformation4 = "lcom/google/firebase/crashlytics/internal/common/commonutils.getproximitysensorenabled"

SensorInformationA = [AntiEmulatorSensorInformation1]
SensorInformationB = [AntiEmulatorSensorInformation2]
SensorInformationC = [AntiEmulatorSensorInformation3,AntiEmulatorSensorInformation4]
'''
AntiEmulatorSensorInformationDiscriminant   

A m17 Sensor related methods  

有A没B

'''

ContextSwitchBasedDetectionNativeS1 = "pthread_create"
ContextSwitchBasedDetectionNativeS2 = "pthread_join"
ContextSwitchBasedDetectionNativeS3 = "sleep"

ContextSwitchBasedDetectionNativeS4 = "pthread_mutex_lock"


ContextSwitchBasedDetectionA = [ContextSwitchBasedDetectionNativeS1]
ContextSwitchBasedDetectionB = [ContextSwitchBasedDetectionNativeS4]
ContextSwitchBasedDetectionC = [ContextSwitchBasedDetectionNativeS3]
'''
AntiEmulatorCPUPerformanceContextSwitchBasedDetectionDiscriminant  待改进

C 1024个90 或者sleep
A and Not B or C 

'''


#TranslationBlockCacheBasedDetectionHexcode = "40 fd ff 7f 01 00 00 00 f0 41 2d e9 00 60 a0 e3 00 70 a0 e3 0f 80 a0 e1 00 40 a0 e3 01 70 87 e2 00 50 98 e5 01 40 84 e2 0f 80 a0 e1 0c 80 48 e2 00 50 88 e5 01 60 86 e2 0a 00 54 e3 02 00 00 aa 0a 00 57 e3 00 00 00 aa f5 ff ff ea 04 00 a0 e1 f0 81 bd e8"
#TranslationBlockCacheBasedDetectionHexcode2 = "00 60 66 66 31 C0 31 C0"
#TranslationBlockCacheBasedDetectionHexcode3 = "04 60 66 66 C3 C3 C3 C3"
#TranslationBlockCacheBasedDetectionHexcode4 = "00 60 66 66 90 90 90 90"
#TranslationBlockCacheBasedDetectionHexcode5 = "04 60 66 66 C3 90 90 90"

TranslationBlockCacheBasedDetectionHexcode = b'\x40\xfd\xff\x7f\x01\x00\x00\x00\xf0A-\xe9\x00`\xa0\xe3\x00p\xa0\xe3\x0f\x80\xa0\xe1\x00@\xa0\xe3\x01p\x87\xe2\x00P\x98\xe5\x01@\x84\xe2\x0f\x80\xa0\xe1\x0c\x80H\xe2\x00P\x88\xe5\x01`\x86\xe2\n\x00T\xe3\x02\x00\x00\xaa\n\x00W\xe3\x00\x00\x00\xaa\xf5\xff\xff\xea\x04\x00\xa0\xe1\xf0\x81\xbd\xe8'
TranslationBlockCacheBasedDetectionHexcode2 = b'\x00`\x66\x66\x31\xc0\x31\xc0'
TranslationBlockCacheBasedDetectionHexcode3 = b'\x04`\x66\x66\xc3\xc3\xc3\xc3'
TranslationBlockCacheBasedDetectionHexcode4 = b'\x00`\x66\x66\x90\x90\x90\x90'
TranslationBlockCacheBasedDetectionHexcode5 = b'\x04`\x66\x66\xc3\x90\x90\x90'

TranslationBlockCacheBasedDetectionHexcode6 = b"\xb8\x31\xc0\x31\xc0\xa3\x00\x60\x66\x66"
TranslationBlockCacheBasedDetectionHexcode7 = b"\xb8\x90\x90\x90\x90\xa3\x00\x60\x66\x66"

'''
AntiEmulatorCPUPerformanceTranslationBlockCacheBasedDetectionDiscriminant  待改进

A and 05 10 00 00
'''

#MisalignedVectorizationBasedDetectionHexcode = "05 10 00 00"
#MisalignedVectorizationBasedDetectionHexcode1 = "05 00 01 E3 0E 00 80 E8"
#MisalignedVectorizationBasedDetectionHexcode2 = "41 F2 05 00 80 E8 0E 00" 
#MisalignedVectorizationBasedDetectionHexcode3 = "05 00 01 E3 0E 00 90 E8" 
#MisalignedVectorizationBasedDetectionHexcode4 = "41 F2 05 00 90 E8 0E 00" 
#MisalignedVectorizationBasedDetectionHexcode5 = "89 E0 FF C0 0F 2B 00"

MisalignedVectorizationBasedDetectionHexcode1 = b'\x05\x00\x01\xe3\x0e\x00\x80\xe8'
MisalignedVectorizationBasedDetectionHexcode2 = b'\x41\xf2\x05\x00\x80\xe8\x0e\x00'
MisalignedVectorizationBasedDetectionHexcode3 = b'\x05\x00\x01\xe3\x0e\x00\x90\xe8'
MisalignedVectorizationBasedDetectionHexcode4 = b'\x41\xf2\x05\x00\x90\xe8\x0e\x00'
MisalignedVectorizationBasedDetectionHexcode5 = b'\x89\xe0\xff\xc0\x0f\x2b\x00'


#48 89 e0 48 83 c0 01 
MisalignedVectorizationBasedDetectionHexcode6 = b"\x48\x89\xe0\x48\x83\xc0\x01"
#89 e0 83 c0 01 
MisalignedVectorizationBasedDetectionHexcode7 = b"\x89\xe0\x83\xc0\x01"

MisalignedVectorizationBasedDetectionHexcode8 = b"\x66\x89\xe0\x66\x83\xc0\x01"

MisalignedVectorizationBasedDetectionS1 = "signal"

MisalignedVectorizationBasedDetectionA = [MisalignedVectorizationBasedDetectionS1]

'''
AntiEmulatorCPUPerformanceMisalignedVectorizationBasedDetectionDiscriminant  待改进  #去掉signal

isEmu = True
AlignTrapHandler(change isEmu to false)
InstallHandler(AlignTrapHandler)   设置陷阱
PTR = misaligned pointer for Read/Write memory
Execute PTR  执行未对齐指令
Return isEmu

or

/* Put some known data into memory */
int * ptr = calloc (1 , sizeof ( int) );
ptr [0] = 0 x12345678 ;

// Shift address to a non - word boundary
ptr = ( int *) (( char *) ptr + 0 x1 );

// Try to read from misaligned address
asm (" mov r3 ,%0 " : : "r"( ptr ));
asm (" LDM r3 ,{%0} ": "=r"( val ) : : ) ;  将地址上的值加载到寄存器上 从内存到寄存器

printf ("0x %08 X\n", val );

'''


#UpdatestoExecutionStateBitsHexcode1 = "02 1c a0 e3 01 f0 22 e1"
#UpdatestoExecutionStateBitsHexcode2 = "00 10 a0 e3 01 f0 22 e1"
#UpdatestoExecutionStateBitsHexcode3 = "02 fc 22 e3"
#UpdatestoExecutionStateBitsHexcode4 = "00 f0 22 e3"
#UpdatestoExecutionStateBitsHexcode5 = "01 f0 6f e3"
#UpdatestoExecutionStateBitsHexcode6 = "00 f0 6f e3"

UpdatestoExecutionStateBitsHexcode1 = b'\x02\x1c\xa0\xe3\x01\xf0\x22\xe1'
UpdatestoExecutionStateBitsHexcode2 = b'\x00\x10\xa0\xe3\x01\xf0\x22\xe1'
UpdatestoExecutionStateBitsHexcode3 = b'\x02\xfc\x22\xe3'
UpdatestoExecutionStateBitsHexcode4 = b'\x00\xf0\x22\xe3'
UpdatestoExecutionStateBitsHexcode5 = b'\x01\xf0\x6f\xe3'
UpdatestoExecutionStateBitsHexcode6 = b'\x00\xf0\x6f\xe3'

UpdatestoExecutionStateBitsHexcode7 = b"\x4f\xf4\x00\x71\x81\xf3\x00\x88"
UpdatestoExecutionStateBitsHexcode8 = b"\x4f\xf0\x00\x01\x81\xf3\x00\x88"

UpdatestoExecutionStateBitsHexcode9 = b"\xef\xf3\x00\x80\x40\xf0\x00\x50"
UpdatestoExecutionStateBitsHexcode10 = b"\xef\xf3\x00\x80\x20\xf0\x00\x50"


UpdatestoExecutionStateBitsHexcode11 = b"\x4f\xf4\x00\x70\x80\xf3\x00\x82"
UpdatestoExecutionStateBitsHexcode12 = b"\x4f\xf0\x00\x00\x80\xf3\x00\x82"

UpdatestoExecutionStateBitsHexcode13 = b"\x4f\xf4\x00\x71\x81\xf3\x00\x82"
UpdatestoExecutionStateBitsHexcode14 = b"\x4f\xf0\x00\x01\x81\xf3\x00\x82"

UpdatestoExecutionStateBitsHexcode15 = b"\x4f\xf4\x00\x72\x82\xf3\x00\x82"
UpdatestoExecutionStateBitsHexcode16 = b"\x4f\xf0\x00\x02\x82\xf3\x00\x82"

UpdatestoExecutionStateBitsHexcode17 = b"\x4f\xf4\x00\x73\x83\xf3\x00\x82"
UpdatestoExecutionStateBitsHexcode18 = b"\x4f\xf0\x00\x03\x83\xf3\x00\x82"

UpdatestoExecutionStateBitsHexcode19 = b"\x4f\xf4\x00\x74\x84\xf3\x00\x82"
UpdatestoExecutionStateBitsHexcode20 = b"\x4f\xf0\x00\x04\x84\xf3\x00\x82"

UpdatestoExecutionStateBitsHexcode21 = b"\x4f\xf4\x00\x75\x85\xf3\x00\x82"
UpdatestoExecutionStateBitsHexcode22 = b"\x4f\xf0\x00\x05\x85\xf3\x00\x82"

UpdatestoExecutionStateBitsHexcode23 = b"\x4f\xf4\x00\x76\x86\xf3\x00\x82"
UpdatestoExecutionStateBitsHexcode24 = b"\x4f\xf0\x00\x06\x86\xf3\x00\x82"

UpdatestoExecutionStateBitsHexcode25 = b"\x4f\xf4\x00\x77\x87\xf3\x00\x82"
UpdatestoExecutionStateBitsHexcode26 = b"\x4f\xf0\x00\x07\x87\xf3\x00\x82"

UpdatestoExecutionStateBitsHexcode27 = b"\x4f\xf4\x00\x78\x88\xf3\x00\x82"
UpdatestoExecutionStateBitsHexcode28 = b"\x4f\xf0\x00\x08\x88\xf3\x00\x82"

UpdatestoExecutionStateBitsHexcode29 = b"\x4f\xf4\x00\x79\x89\xf3\x00\x82"
UpdatestoExecutionStateBitsHexcode30 = b"\x4f\xf0\x00\x09\x89\xf3\x00\x82"

UpdatestoExecutionStateBitsHexcode31 = b"\x4f\xf4\x00\x7A\x8A\xf3\x00\x82"
UpdatestoExecutionStateBitsHexcode32 = b"\x4f\xf0\x00\x0A\x8A\xf3\x00\x82"

UpdatestoExecutionStateBitsHexcode33 = b"\x4f\xf4\x00\x7B\x8B\xf3\x00\x82"
UpdatestoExecutionStateBitsHexcode34 = b"\x4f\xf0\x00\x0B\x8B\xf3\x00\x82"

UpdatestoExecutionStateBitsHexcode35 = b"\x4f\xf4\x00\x7C\x8C\xf3\x00\x82"
UpdatestoExecutionStateBitsHexcode36 = b"\x4f\xf0\x00\x0C\x8C\xf3\x00\x82"


UpdatestoExecutionStateBitsHexcode37 = b"\xe3\x20\xf0\x00"
UpdatestoExecutionStateBitsHexcode38 = b"\xe3\x22\xf0\x00"

UpdatestoExecutionStateBitsHexcode39 = b"\xe3\xa0\x0c\x02\xe1\x22\xf0\x00"
UpdatestoExecutionStateBitsHexcode40 = b"\xe3\xa0\x00\x00\xe1\x22\xf0\x00"


UpdatestoExecutionStateBitsHexcode41 = b"\xe3\xa0\x1c\x02\xe1\x22\xf0\x01"
UpdatestoExecutionStateBitsHexcode42 = b"\xe3\xa0\x10\x00\xe1\x22\xf0\x01"

UpdatestoExecutionStateBitsHexcode43 = b"\xe3\xa0\x2c\x02\xe1\x22\xf0\x02"
UpdatestoExecutionStateBitsHexcode44 = b"\xe3\xa0\x20\x00\xe1\x22\xf0\x02"

UpdatestoExecutionStateBitsHexcode45 = b"\xe3\xa0\x3c\x02\xe1\x22\xf0\x03"
UpdatestoExecutionStateBitsHexcode46 = b"\xe3\xa0\x30\x00\xe1\x22\xf0\x03"

UpdatestoExecutionStateBitsHexcode47 = b"\xe3\xa0\x4c\x02\xe1\x22\xf0\x04"
UpdatestoExecutionStateBitsHexcode48 = b"\xe3\xa0\x40\x00\xe1\x22\xf0\x04"

UpdatestoExecutionStateBitsHexcode49 = b"\xe3\xa0\x5c\x02\xe1\x22\xf0\x05"
UpdatestoExecutionStateBitsHexcode50 = b"\xe3\xa0\x50\x00\xe1\x22\xf0\x05"

UpdatestoExecutionStateBitsHexcode51 = b"\xe3\xa0\x6c\x02\xe1\x22\xf0\x06"
UpdatestoExecutionStateBitsHexcode52 = b"\xe3\xa0\x60\x00\xe1\x22\xf0\x06"

UpdatestoExecutionStateBitsHexcode53 = b"\xe3\xa0\x7c\x02\xe1\x22\xf0\x07"
UpdatestoExecutionStateBitsHexcode54 = b"\xe3\xa0\x70\x00\xe1\x22\xf0\x07"

UpdatestoExecutionStateBitsHexcode55 = b"\xe3\xa0\x8c\x02\xe1\x22\xf0\x08"
UpdatestoExecutionStateBitsHexcode56 = b"\xe3\xa0\x80\x00\xe1\x22\xf0\x08"

UpdatestoExecutionStateBitsHexcode57 = b"\xe3\xa0\x9c\x02\xe1\x22\xf0\x09"
UpdatestoExecutionStateBitsHexcode58 = b"\xe3\xa0\x90\x00\xe1\x22\xf0\x09"

UpdatestoExecutionStateBitsHexcode59 = b"\xe3\xa0\xac\x02\xe1\x22\xf0\x0a"
UpdatestoExecutionStateBitsHexcode60 = b"\xe3\xa0\xa0\x00\xe1\x22\xf0\x0a"

UpdatestoExecutionStateBitsHexcode61 = b"\xe3\xa0\xbc\x02\xe1\x22\xf0\x0b"
UpdatestoExecutionStateBitsHexcode62 = b"\xe3\xa0\xb0\x00\xe1\x22\xf0\x0b"


UpdatestoExecutionStateBitsHexcode63 = b"\xe3\xa0\xcc\x02\xe1\x22\xf0\x0c"
UpdatestoExecutionStateBitsHexcode64 = b"\xe3\xa0\xc0\x00\xe1\x22\xf0\x0c"

UpdatestoExecutionStateBitsHexcodeA = [eval("UpdatestoExecutionStateBitsHexcode"+str(i)) for i in range(1,65) if i % 2 == 1]
UpdatestoExecutionStateBitsHexcodeB = [eval("UpdatestoExecutionStateBitsHexcode"+str(i)) for i in range(1,65) if i % 2 == 0]

'''
AntiEmulatorCPUPerformanceUpdatesToExecutionStateBitsDiscriminant  待改进

isEmu =T
设置陷阱 (陷阱中isEmu =F)
执行未定义指令
return isEmu

'''
IncompleteSanitizationforUndefinedInstructionsS1 = "signal"
#IncompleteSanitizationforUndefinedInstructionsHexcode1 = "91 30 00 90"
#IncompleteSanitizationforUndefinedInstructionsHexcode2 = "91 3F FF 9F"

IncompleteSanitizationforUndefinedInstructionsHexcode1 = b'\x91\x30\x00\x90'
IncompleteSanitizationforUndefinedInstructionsHexcode2 = b'\x91\x3f\xff\x9f'



IncompleteSanitizationforUndefinedInstructionsA = [IncompleteSanitizationforUndefinedInstructionsS1]

'''
AntiEmulatorCPUPerformanceIncompleteSanitizationForUndefinedInstructionsDiscriminant  待改进

/* Put some known data into memory */
int * ptr = calloc (1 , sizeof ( int) );
ptr [0] = 0 x12345678 ;
asm ("mov r8 ,%0 " : : "r"( ptr ));

/* Read ptr [0] with CPSR .E set to 1 */
asm ("msr CPSR_x , #0 x200 \n\t");
asm ("ldr r4 ,[ r8 ]\n\t");
asm ("msr CPSR_x , #0 x000 \n\t");

asm ("mov %0 , r4" : "=r"( val ) : : );
printf ("0x %08X\n", val );
'''

AntiEmulatorMethodsm18 = "Landroid/media/projection/MediaProjectionManager.createScreenCaptureIntent"
AntiEmulatorMethodsm19 = "Landroid/media/projection/MediaProjectionManager.getMediaProjection"
AntiEmulatorMethodsm20 = "Landroid/media/projection/MediaProjection.createVirtualDisplay"
AntiEmulatorMethodsm21 = "Landroid/media/ImageReader.newInstance"

AntiEmulatorMethodsm22 = "Landroid/view/Choreographer.getInstance" 
AntiEmulatorMethodsm23 = "Landroid/view/Choreographer.postFrameCallback"
AntiEmulatorMethodsm24 = "Landroid/view/Choreographer.removeFrameCallback"
AntiEmulatorMethodsm25 = "Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16$1.doFrame"

AntiEmulatorMethodsm26 = "Ljava/lang/System.nanoTime"
AntiEmulatorMethodsm27 = "Landroid/os/SystemClock.elapsedRealtimeNanos"

GraphicalPerformanceA = [AntiEmulatorMethodsm18, AntiEmulatorMethodsm19, AntiEmulatorMethodsm20]
GraphicalPerformanceB = [AntiEmulatorMethodsm21]
GraphicalPerformanceC = [AntiEmulatorMethodsm22, AntiEmulatorMethodsm23, AntiEmulatorMethodsm24, AntiEmulatorMethodsm25]
GraphicalPerformanceD = [AntiEmulatorMethodsm26, AntiEmulatorMethodsm27] 



'''
AntiEmulatorGraphicalPerformanceDiscriminant
A m18-20 MediaProjection related methods
B m21 ImageReader related methods
C m22 and m23 and 24 and 25 Choreographer related methods
D m26-27 时间测量函数
C and D
'''

AntiEmulatorStringsJavas68 = "com.google.android.gsf.login"   #GoogleLoginService.apk
AntiEmulatorStringsJavas69 = "GoogleLoginService.apk"
AntiEmulatorStringsJavas70 = "GoogleLoginService" 
AntiEmulatorStringsJavas71 = "com.google.android.gsf"         #GoogleServicesFramework.apk
AntiEmulatorStringsJavas72 = "GoogleServicesFramework.apk"
AntiEmulatorStringsJavas73 = "GoogleServicesFramework"
AntiEmulatorStringsJavas74 = "com.android.vending"            #phonesky.apk
AntiEmulatorStringsJavas75 = "phonesky.apk"
AntiEmulatorStringsJavas76 = "vending.apk"   
AntiEmulatorStringsJavas77 = "VZWBackupAssistant.apk"
AntiEmulatorStringsJavas78 = "phonesky"
AntiEmulatorStringsJavas79 = "vending"   
AntiEmulatorStringsJavas80 = "VZWBackupAssistant"  

AntiEmulatorStringsJavas88 = "content://com.google.android.gsf/services"  
AntiEmulatorStringsJavas89 = "content://sms"
AntiEmulatorStringsJavas90 = "emulator"
AntiEmulatorAttributesa9 = "Landroid/provider/CallLog$Calls.CONTENT_URI"
AntiEmulatorMethodsm24 = "Landroidx/core/content/ContentResolverCompat.query"

AntiEmulatorMethodsm25 = "Landroid/content/pm/PackageManager.getInstalledApplications"
AntiEmulatorMethodsm26 = "Ljava/util/List.size"
AntiEmulatorMethodsm27 = "Landroid/database/Cursor.getCount"
AntiEmulatorMethodsm28 = "Lcom/google/android/gms/common/GoogleApiAvailabilityLight.isGooglePlayServicesAvailable"

PresenceofOtherAppsA = [eval("AntiEmulatorStringsJavas"+str(i)) for i in range(68,81)] 
PresenceofOtherAppsB = [AntiEmulatorMethodsm25]
PresenceofOtherAppsC = [AntiEmulatorMethodsm26, AntiEmulatorMethodsm27]
PresenceofOtherAppsD = [AntiEmulatorMethodsm24,AntiEmulatorMethodsm28]
PresenceofOtherAppsE = [AntiEmulatorStringsJavas88, AntiEmulatorStringsJavas90]
PresenceofOtherAppsF = [AntiEmulatorStringsJavas89, AntiEmulatorAttributesa9]

'''
AntiEmulatorPresenceofOtherAppsDiscriminant
A javaS68-80 Other Apps related strings
B m25 查询其他app是否存在
C m26 m27 返回列表数量  用CG图实现，在一个函数中，调用getInstalledApplications size 而不调用equals
D m24 m28查询服务
E s88 s90谷歌服务
F s89 a9 短信服务/通话记录
(A∧B)∨(CG(C))∨(D∧E)∨(E∧F∧C) -> 去掉DE

'''

CurrentBuildA = [eval("AntiEmulatorAttributesa"+str(i)) for i in range(1,9)] 
CurrentBuildB = [eval("AntiEmulatorStringsJavas"+str(i)) for i in range(15,19)]
CurrentBuildC = [eval("AntiEmulatorStringsJavas"+str(i)) for i in range(20,30)]
#CurrentBuildC.append(AntiEmulatorStringsJavas49)
CurrentBuildC.append(AntiEmulatorStringsJavas50)
CurrentBuildD = ["sdk","google_sdk","android_id","Landroid/os/Build.PRODUCT"]
CurrentBuildE = ["emulator","android_id","generic","Landroid/os/Build.DEVICE"]
CurrentBuildF = ["Landroid/os/Build.HARDWARE","ranchu","goldfish"]
'''
AntiEmulatorCurrentBuildDiscriminant

A a1-8 android.os.Build attributes
B s15-18  string for comparison of properties
C s21-29  string for comparison of properties
A∧(B∨C) or D or E
'''

#Anti App-Level Virtualization part
#FilePath
FilePaths1 = "com.bly.dkplat"
FilePaths2 = "dkplugin.pke.nnp"
FilePaths3 = "com.by.chaos"
FilePaths4 = "com.lbe.parallel"
FilePaths5 = "com.excelliance.dualaid"
FilePaths6 = "com.lody.virtual"
FilePaths7 = "com.qihoo.magic"

FilePaths9 = "/data/data/%s/.RiskStub%s/.doubleOpen"
FilePaths10 = "/data/(data|user/0)/%s/files"
FilePathm1 = "Landroid/content/Context.getFilesDir"
FilePathm2 = "Ljava/io/File.getPath"

FilePaths8 = "/proc/self/maps"

FilePathm3 = "Landroid/content/Context.getPackageName"
FilePathm4 = "Landroid/content/pm/PackageManager.getInstalledPackages"
FilePathm5 = "Landroid/content/pm/PackageInfo.packageName"
FilePathm6 = "Ljava/lang/String.equals"

FilePathA = [eval("FilePaths"+str(i)) for i in range(1,8)] 
FilePathB = [eval("FilePathm"+str(i)) for i in range(1,3)] 
FilePathC = [FilePaths8,"cat /proc/self/maps"] 
FilePathD = [eval("FilePathm"+str(i)) for i in range(3,7)] 
FilePathE = [FilePaths9,FilePaths10]
'''
FilePath
A s1-7 多开app的包名
B m1 and m2 查询当前路径    CG
C s8 利用/proc/self/maps
D m3 and m4 and m5 and m6 查找两个包名完全相同的app  CG
E 多开之后的文件路径特征

(A∧(B∨C))∨D∨E
'''
#ShareUID
ShareUIDa1 = "Ljava/util/Locale.CHINA"

ShareUIDa2 = "Landroid/content/pm/ApplicationInfo.uid"  

ShareUIDs1 = "cat /proc/self/cgroup"
ShareUIDs2 = "uid"
ShareUIDs6 = "/proc/self/cgroup"

ShareUIDs7 = "/pid"

ShareUIDs3 = "/data/data/%s"
ShareUIDs4 = "/data/data/"
ShareUIDs5 = "ps"

ShareUIDm1 = "Landroid/content/Context.checkSelfPermission"
ShareUIDm2 = "Landroidx/core/content/ContextCompat.checkSelfPermission"
ShareUIDm3 = "Landroid/support/v4/content/PermissionChecker.checkSelfPermission"
ShareUIDm4 = "Landroidx/core/content/PermissionChecker.checkSelfPermission"

ShareUIDm5 = "Landroidx/core/app/ActivityCompat.requestPermissions"
ShareUIDm6 = "Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback.onRequestPermissionsResult"
ShareUIDm7 = "Landroidx/core/app/ActivityCompat$PermissionCompatDelegate.requestPermissions"
ShareUIDm8 = "Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator.validateRequestPermissionsRequestCode"
ShareUIDm9 = "Landroidx/fragment/app/FragmentHostCallback.onRequestPermissionsFromFragment"
ShareUIDm10 = "Landroidx/fragment/app/FragmentManager.launchRequestPermissions"
ShareUIDm11 = "Landroidx/activity/ComponentActivity.onRequestPermissionsResult"
ShareUIDm12 = "Landroidx/fragment/app/Fragment.onRequestPermissionsResult"
ShareUIDm13 = "Landroidx/fragment/app/Fragment.requestPermissions"
ShareUIDm14 = "Landroidx/fragment/app/FragmentActivity.onRequestPermissionsResult"
ShareUIDm15 = "Landroidx/fragment/app/FragmentActivity.validateRequestPermissionsRequestCode"
ShareUIDm16 = "Landroid/app/Activity.requestPermissions"
ShareUIDm17 = "Landroidx/core/app/ComponentActivity.onRequestPermissionsResult"
ShareUIDm18 = "Landroidx/appcompat/app/AppCompatActivity.onRequestPermissionsResult"
ShareUIDm19 = "Landroidx/activity/result/contract/ActivityResultContracts.RequestMultiplePermissions"
ShareUIDm20 = "Landroid/app/Activity.onRequestPermissionsResult"
ShareUIDm21 = "Landroidx/core/app/ActivityCompat.shouldShowRequestPermissionRationale"

ShareUIDm22 = "Ljava/io/File.mkdirs"
ShareUIDm23 = "Landroid/location/LocationManager.getLastKnownLocation"
ShareUIDm24 = "Landroid/telephony/TelephonyManager.getSimSerialNumber"
ShareUIDm25 = "Landroid/telephony/SmsManager.sendTextMessage"
ShareUIDm26 = "Landroid/provider/CalendarContract/Events.query"
ShareUIDm27 = "Landroid/hardware/SensorManager.getDefaultSensor"
ShareUIDm28 = "Landroid/media/AudioRecord.startRecording"
ShareUIDm29 = "Landroid/hardware/camera2/CameraManager.openCamera"
ShareUIDm30 = "Landroid/provider/CallLog/Calls.query"
ShareUIDm31 = "Landroid/content/Context.openFileOutput"
ShareUIDm32 = "Landroid/hardware/Camera.open"
ShareUIDm33 = "Landroid/media/MediaRecorder.prepare"
ShareUIDm34 = "Landroid/provider/ContactsContract/Contacts.query"

ShareUIDc1 = "Ljava/io/File;"

ShareUIDA = [ShareUIDs1, ShareUIDs6]
ShareUIDB = [ShareUIDs2, ShareUIDs7]
ShareUIDC = [ShareUIDs3,ShareUIDs4]
ShareUIDD = [ShareUIDm1, ShareUIDm2, ShareUIDm3, ShareUIDm4]
ShareUIDE = [eval("ShareUIDm"+str(i)) for i in range(5,22)]
ShareUIDF = [eval("ShareUIDm"+str(i)) for i in range(22,35)]
ShareUIDG = [ShareUIDc1]
ShareUIDH = [ShareUIDs5]
'''
ShareUID
A s1 and s2 获取uid
B a2 获取UID
C s3 or s4 /data/data/
D m1-4 检查权限
E m5-21 申请权限
F m22-34 请求危险权限
H s5 ps
((A or B) and (C and H) and G)or  

'''

#PortDetection
PortDetectionm1 = "Ljava/util/Random.<init>"
PortDetectionm2 = "Ljava/net/ServerSocket.<init>"
PortDetectionm3 = "Ljava/net/Socket.<init>"

PortDetectionm4 = "Landroid/os/Process.killProcess"
PortDetectionm5 = "Ljava/lang/System.exit"

PortDetections1 = "127.0.0.1"
PortDetections2 = "cat /proc/net/tcp6"

PortDetections3 = "ANativeActivity_finish"
PortDetections4 = "android_app_exit"


PortDetectionA = [PortDetectionm1, PortDetectionm2, PortDetectionm3]
PortDetectionB = [PortDetections1, PortDetections2]
PortDetectionC = [PortDetectionm4, PortDetectionm5]
PortDetectionD = [PortDetections3, PortDetections4]
'''
A m1 and m2 and m3 
B s1 and s2
C m4-5
D s3-4
A and B and (C or D)
'''
#CodeInjectionAndHooking
CodeInjectionAndHookings1 = "/proc/self/maps"

CodeInjectionAndHookings2 = ".so"
CodeInjectionAndHookings3 = "/system/lib/"
CodeInjectionAndHookings4 = "libmylibrary"
CodeInjectionAndHookings5 = "/system/vendor/lib/"

CodeInjectionAndHookingm1 = "Ljava/lang/Exception.getStackTrace"
CodeInjectionAndHookingm2 = "Ljava/lang/StackTraceElement.getClassName"
CodeInjectionAndHookingm3 = "Ljava/lang/StackTraceElement.getMethodName"

CodeInjectionAndHookings6 = "callActivityOnCreate"


CodeInjectionAndHookingA = [eval("CodeInjectionAndHookings"+str(i)) for i in range(1,6)]
CodeInjectionAndHookingB = [CodeInjectionAndHookingm1, CodeInjectionAndHookingm2, CodeInjectionAndHookingm3]  #CG
CodeInjectionAndHookingC = [CodeInjectionAndHookings6]

'''
CodeInjectionAndHooking
A s1 and s2 and s3 and s4 and s5 检测可疑so库
B m1 and m2 and m3
C s6
A or (B and C)
'''

#Anti-Hooking part
#Anti-Hooking  Xpose and Frida
#↓-------------OLD——————————————————————————————————————————————————————————————
AntiHookingClassesc1 = "Ldalvik/system/DexFile;"
AntiHookingClassesc2 = "Ljava/lang/StackTraceElement;"
AntiHookingClassesc3 = "Landroid/app/ActivityManager$RunningServiceInfo;"
AntiHookingClassesc4 = "Landroid/app/ActivityManager;"
AntiHookingClassesc5 = "Landroid/content/pm/ApplicationInfo;"
AntiHookingClassesc6 = "Ljava/util/Enumeration;"
AntiHookingClassesc7 = "Ljava/lang/reflect/Modifier;"
#↑-------------OLD——————————————————————————————————————————————————————————————
#↓-------------OLD——————————————————————————————————————————————————————————————
AntiHookingMethodsm1 = "Ljava/lang/StackTraceElement.getClassName"
AntiHookingMethodsm2 = "Ljava/lang/StackTraceElement.getMethodName"
AntiHookingMethodsm3 = "Landroid/app/ActivityManager.getRunningServices"
AntiHookingMethodsm4 = "Landroid/content/Context.getPackageCodePath"
AntiHookingMethodsm5 = "Ljava/lang/reflect/Modifier.isNative"
AntiHookingMethodsm6 = "Ldalvik/system/DexFile.entries"
AntiHookingMethodsm7 = "Ljava/util/Enumeration.hasMoreElements"
AntiHookingMethodsm8 = "Ljava/util/Enumeration.nextElement"
#↑-------------OLD——————————————————————————————————————————————————————————————
#↓-------------OLD——————————————————————————————————————————————————————————————
AntiHookingAttributea1 = "Landroid/content/pm/ApplicationInfo.sourceDir"
AntiHookingAttributea2 = "Landroid/app/ActivityManager$RunningServiceInfo.process"
AntiHookingAttributea3 = "Landroid/content/pm/ApplicationInfo.processName"
#↑-------------OLD——————————————————————————————————————————————————————————————
#↓-------------OLD——————————————————————————————————————————————————————————————
AntiHookingStringsJavas1 = "com.saurik.substrate"
AntiHookingStringsJavas2 = "com.saurik.substrate.MS$2"
AntiHookingStringsJavas3 = "de.robv.android.xposed.XposedBridge"
AntiHookingStringsJavas4 = "XposedBridge.jar"
#AntiHookingStringsJavas5 = "xposed"
AntiHookingStringsJavas5 = "XposedBridge.jar"
#↑-------------OLD——————————————————————————————————————————————————————————————

AntiHookingStringsJavas6 = "de.robv.android.xposed.installer"

#↓-------------OLD——————————————————————————————————————————————————————————————
AntiHookingStringsJavas8 = "classes.dex"
AntiHookingStringsJavas9 = "classes2.dex"
AntiHookingStringsJavas10 = "classes3.dex"
AntiHookingStringsJavas11 = "classes4.dex"
AntiHookingStringsJavas12 = "classes5.dex"

AntiHookingStringsJavas13 = "fridaserver"
AntiHookingStringsJavas14 = "LIBFRIDA"
#AntiHookingStringsJavas15 = "frida"
AntiHookingStringsJavas15 = "frida-gadget"
AntiHookingStringsJavas16 = "frida-gadget"
AntiHookingStringsJavas17 = "frida-agent"
#↑-------------OLD——————————————————————————————————————————————————————————————

#↓-------------OLD——————————————————————————————————————————————————————————————
AntiHookingStringsNatives1 = "com.saurik.substrate"
AntiHookingStringsNatives2 = "com.saurik.substrate.MS$2"
AntiHookingStringsNatives3 = "de.robv.android.xposed.XposedBridge"
AntiHookingStringsNatives4 = "XposedBridge.jar"
#AntiHookingStringsNatives5 = "xposed"
AntiHookingStringsNatives5 = "XposedBridge.jar"
#↑-------------OLD——————————————————————————————————————————————————————————————

AntiHookingStringsNatives6 = "de.robv.android.xposed.installer"
#↓-------------OLD——————————————————————————————————————————————————————————————

AntiHookingStringsNatives8 = "fridaserver"
AntiHookingStringsNatives9 = "LIBFRIDA"
#AntiHookingStringsNatives10 = "frida"
AntiHookingStringsNatives10 = "frida-gadget"
AntiHookingStringsNatives11 = "frida-gadget"
AntiHookingStringsNatives12 = "frida-agent"
#↑-------------OLD——————————————————————————————————————————————————————————————

AntiHookingStringsNatives16 = "de.robv.android.xposed.XposedHelpers"
AntiHookingStringsNatives20 = "com.saurik.substrate"
AntiHookingStringsNatives21 = "de.robv.android.xposed"

AntiHookingStringsNatives17 = "frida-server"
AntiHookingStringsNatives18 = "frida-core"
AntiHookingStringsNatives19 = "libfrida.so"
xposedExa = [".robv.android.xposed.installer",".saurik.substrate","io.va.exposed","io.va.exposed64","org.meowcat.edxposed.manager","/system/lib/libxposed_art.so","/system/lib64/libxposed_art.so","app_process32_xposed.so","libxposed_art.so",]
XposedA = [eval("AntiHookingStringsJavas"+str(i)) for i in range(1,7)]
XposedB = [eval("AntiHookingStringsJavas"+str(i)) for i in range(8,13)]
XposedC = [AntiHookingAttributea1]
XposedD = [AntiHookingMethodsm4]
XposedE = [AntiHookingMethodsm5]
XposedF = [eval("AntiHookingStringsNatives"+str(i)) for i in range(1,7)]
XposedF.append(AntiHookingStringsNatives16)
XposedF.append(AntiHookingStringsNatives20)
XposedF.append(AntiHookingStringsNatives21)
XposedF = XposedF + xposedExa

Magisk = ["/sbin/magisk", "/data/adb/magisk", "/sbin/.magisk", "/cache/.disable_magisk", "/dev/.magisk.unblock", "/cache/magisk.log", "/data/adb/magisk.img", "/data/adb/magisk.db", "/data/adb/.boot_count", "/data/adb/magisk_simple", "/init.magisk.rc","com.topjohnwu.magisk"]

'''
AntiHookingXposeDiscriminant
A javas1-6 At least one of strings related to the frameworks  
B s8-12 At least one of the strings for the .dex file
C a1 ApplicationInfo.sourceDir for the path of the APK
D m4 method for getting the path of the APK
E m5 check if a method is native thus hooked
F natives1-7 16 At least one of strings related to the frameworks

(A∨((C∨D)∧B∧E))∨F -> A or F
'''
FridaExa = ["re.frida.server","/data/local/tmp/re.frida.server/frida-agent-32.so","/data/local/tmp/re.frida.server/frida-agent-64.so","frida-agent-32.so","frida-agent-64.so"]
FridaA = [eval("AntiHookingStringsJavas"+str(i)) for i in range(13,18)]
FridaB = [eval("AntiHookingStringsJavas"+str(i)) for i in range(8,13)]
FridaC = [AntiHookingAttributea1]
FridaD = [AntiHookingMethodsm4]
FridaE = [AntiHookingMethodsm5]
FridaF = [eval("AntiHookingStringsNatives"+str(i)) for i in range(8,13)]
FridaF.append(AntiHookingStringsNatives17)
FridaF.append(AntiHookingStringsNatives18)
FridaF.append(AntiHookingStringsNatives19)
FridaF = FridaF + FridaExa
'''
AntiHookingFridaDiscriminant
A javas13-17 At least one of strings related to the frameworks  
B s8-12 At least one of the strings for the .dex file
C a1 ApplicationInfo.sourceDir for the path of the APK
D m4 method for getting the path of the APK
E m5 check if a method is native thus hooked
F natives8-12 17-19 At least one of strings related to the frameworks

(A∨((C∨D)∧B∧E))∨F -> A or F
'''

#Anti-Debugging part A B C D E F G H I J K L M N O
#↓-------------OLD——————————————————————————————————————————————————————————————
AntiDebuggingUsingTracerPIDClassesc1 = "Landroid/os/Debug;"
AntiDebuggingUsingTracerPIDClassesc2 = "Landroid/app/ActivityManager;"

AntiDebuggingUsingTracerPIDMethodsm1 = "Landroid/os/Debug.isDebuggerConnected"
AntiDebuggingUsingTracerPIDMethodsm2 = "Landroid/os/Debug.waitingForDebugger"
AntiDebuggingUsingTracerPIDMethodsm3 = "Landroid/app/ActivityManager.isRunningInTestHarness"

AntiDebuggingUsingTracerPIDStringsJavas1 = "TracerPid"
AntiDebuggingUsingTracerPIDStringsJavas2 = "/proc/self/status"
AntiDebuggingUsingTracerPIDStringsJavas3 = "/proc/"
AntiDebuggingUsingTracerPIDStringsJavas4 = "/status"
AntiDebuggingUsingTracerPIDStringsJavas5 = "getpid"
AntiDebuggingUsingTracerPIDStringsJavas6 = "pid"
#↑-------------OLD——————————————————————————————————————————————————————————————

#↓-------------OLD——————————————————————————————————————————————————————————————
AntiDebuggingUsingTracerPIDSymbolsNativesy1 = "fork"
AntiDebuggingUsingTracerPIDSymbolsNativesy2 = "getppid"
AntiDebuggingUsingTracerPIDSymbolsNativesy3 = "ptrace"
AntiDebuggingUsingTracerPIDSymbolsNativesy4 = "waitpid"
AntiDebuggingUsingTracerPIDSymbolsNativesy5 = "pthread_create"
AntiDebuggingUsingTracerPIDSymbolsNativesy6 = "pthread_exit"
AntiDebuggingUsingTracerPIDSymbolsNativesy7 = "WIFSTOPPED"
AntiDebuggingUsingTracerPIDSymbolsNativesy8 = "pthread_t"

AntiDebuggingUsingTracerPIDStringsNatives1 = "TracerPid"
AntiDebuggingUsingTracerPIDStringsNatives2 = "/proc/self/status"
AntiDebuggingUsingTracerPIDStringsNatives3 = "/proc/"
AntiDebuggingUsingTracerPIDStringsNatives4 = "/status"
AntiDebuggingUsingTracerPIDStringsNatives5 = "/proc/PID/Status"
AntiDebuggingUsingTracerPIDStringsNatives6 = "pid"
#↑-------------OLD——————————————————————————————————————————————————————————————
UsingTracerPIDexa = ["/proc/self/status","TracerPid:","tracer_pid"]

UsingTracerPIDA = [AntiDebuggingUsingTracerPIDStringsJavas1] 
UsingTracerPIDB = [AntiDebuggingUsingTracerPIDStringsJavas2] 
UsingTracerPIDC = [eval("AntiDebuggingUsingTracerPIDStringsJavas"+str(i)) for i in range(3,6)] 
UsingTracerPIDD = [eval("AntiDebuggingUsingTracerPIDSymbolsNativesy"+str(i)) for i in range(1,5)] 
UsingTracerPIDE = [AntiDebuggingUsingTracerPIDStringsNatives1]
UsingTracerPIDF = [AntiDebuggingUsingTracerPIDStringsNatives2]  
UsingTracerPIDG = [eval("AntiDebuggingUsingTracerPIDStringsNatives"+str(i)) for i in range(3,6)] 
UsingTracerPIDH = UsingTracerPIDexa
'''
AntiDebuggingUsingTracerPIDDiscriminant
A javas1 “TracerPid” string 原有
B javas2 “/proc/self/status” string 原有
C javas3-5 both “/proc/” + “/status” strings and "getpid" 原有
D i1-4 fork, getpid, ptrace or waitpid symbols  原有


(A∧((B∨C)∨D))
'''
#↓-------------OLD——————————————————————————————————————————————————————————————
AntiDebuggingDebuggerRelatedValueClassesc1 = "Landroid/content/Context;"
AntiDebuggingDebuggerRelatedValueClassesc2 = "Landroid/content/pm/ApplicationInfo;"
AntiDebuggingDebuggerRelatedValueClassesc3 = "Landroid/content/pm/ApplicationInfo;"
AntiDebuggingDebuggerRelatedValueClassesc4 = "Landroid/os/Process;"

AntiDebuggingDebuggerRelatedValueMethodsm1 = "Landroid/content/Context.getApplicationInfo"
AntiDebuggingDebuggerRelatedValueMethodsm2 = "Ljava/lang/Runtime.getRuntime"
AntiDebuggingDebuggerRelatedValueMethodsm3 = "Ljava/lang/Runtime.exec"
AntiDebuggingDebuggerRelatedValueMethodsm4 = "Landroid/os/Debug.isDebuggerConnected"
AntiDebuggingDebuggerRelatedValueMethodsm5 = "Landroid/os/Debug.waitingForDebugger"
AntiDebuggingDebuggerRelatedValueMethodsm6 = "Landroid/app/ActivityManager.isRunningInTestHarness"

AntiDebuggingDebuggerRelatedValueAttributesa1 = "Landroid/content/pm/ApplicationInfo.flags"
AntiDebuggingDebuggerRelatedValueAttributesa2 = "Landroid/content/pm/ApplicationInfo.FLAG_DEBUGGABLE"
AntiDebuggingDebuggerRelatedValueAttributesa3 = "LsubstituteWithTheApplicationPackage/BuildConfig.DEBUG"

AntiDebuggingDebuggerRelatedValueStringsJavas1 = "ro.debuggable"
AntiDebuggingDebuggerRelatedValueStringsJavas2 = "getprop"
AntiDebuggingDebuggerRelatedValueStringsJavas3 = "android.os.SystemProperties"
#↑-------------OLD——————————————————————————————————————————————————————————————

#↓-------------OLD——————————————————————————————————————————————————————————————
AntiDebuggingDebuggerRelatedValueStringsNatives1 = "ro.debuggable"
#↑-------------OLD——————————————————————————————————————————————————————————————


AntiDebuggingDebuggerRelatedValueSymbolsNativesy1 = "debuggerConnected"
AntiDebuggingDebuggerRelatedValueSymbolsNativesy2 = "debuggerActive"

AntiDebuggingDebuggerRelatedValueStrings4 = "cat /proc/net/tcp |grep :5D8A"
AntiDebuggingDebuggerRelatedValueStrings5 = "netstat |grep :23946"

AntiDebuggingDebuggerRelatedValueStrings6 = "android_server"
AntiDebuggingDebuggerRelatedValueStrings7 = "gdbserver"
AntiDebuggingDebuggerRelatedValueStrings8 = "gdb"
AntiDebuggingDebuggerRelatedValueStrings9 = "fuwu"
AntiDebuggingDebuggerRelatedValueStrings35 = "JDWP"


AntiDebuggingDebuggerRelatedValueStrings10 = "/proc/%d/cmdline"
AntiDebuggingDebuggerRelatedValueStrings15 = "/proc/"
AntiDebuggingDebuggerRelatedValueStrings16 = "/cmdline"

AntiDebuggingDebuggerRelatedValueStrings11 = "zygote"

AntiDebuggingDebuggerRelatedValueStrings12 = "/proc/%d/task"
AntiDebuggingDebuggerRelatedValueStrings21 = "/task"
AntiDebuggingDebuggerRelatedValueStrings36 = "opendir"
AntiDebuggingDebuggerRelatedValueStrings37 = "readdir"


AntiDebuggingDebuggerRelatedValueStrings13 = "/proc/%d/fd/"
AntiDebuggingDebuggerRelatedValueStrings23 = "/fd/"

AntiDebuggingDebuggerRelatedValueStrings14 = "getpid"

AntiDebuggingDebuggerRelatedValueStrings17 = "/system/lib/libdvm.so"

AntiDebuggingDebuggerRelatedValueStrings18 = "_Z25dvmDbgIsDebuggerConnectedv"
AntiDebuggingDebuggerRelatedValueStrings19 = "_ZN3art3Dbg15gDebuggerActiveE"

AntiDebuggingDebuggerRelatedValueStrings24 = "/status"
AntiDebuggingDebuggerRelatedValueStrings25 = "/proc/%d/status"
AntiDebuggingDebuggerRelatedValueStrings26 = "/proc/%d/task/%d/status"

AntiDebuggingDebuggerRelatedValueStrings27 = "/proc/%d/stat"
AntiDebuggingDebuggerRelatedValueStrings28 = "/proc/%d/task/%d/stat"
AntiDebuggingDebuggerRelatedValueStrings29 = "/stat"
AntiDebuggingDebuggerRelatedValueStrings30 = "T"

AntiDebuggingDebuggerRelatedValueStrings31 = "/proc/%d/wchan"
AntiDebuggingDebuggerRelatedValueStrings32 = "/proc/%d/task/%d/wchan"
AntiDebuggingDebuggerRelatedValueStrings33 = "/wchan"
AntiDebuggingDebuggerRelatedValueStrings34 = "ptrace_stop" 

AntiDebuggingDebuggerRelatedValueStrings38 = "adb_enabled"

DebuggerRelatedValueA = [AntiDebuggingDebuggerRelatedValueStringsJavas1]
DebuggerRelatedValueB = [AntiDebuggingDebuggerRelatedValueStringsJavas2, AntiDebuggingDebuggerRelatedValueStringsJavas3]
DebuggerRelatedValueC = [AntiDebuggingDebuggerRelatedValueAttributesa2]
DebuggerRelatedValueD = [AntiDebuggingDebuggerRelatedValueStringsNatives1]
DebuggerRelatedValueE = [AntiDebuggingDebuggerRelatedValueMethodsm4, AntiDebuggingDebuggerRelatedValueMethodsm5, AntiDebuggingDebuggerRelatedValueMethodsm6]
DebuggerRelatedValueF = [AntiDebuggingDebuggerRelatedValueStrings4, AntiDebuggingDebuggerRelatedValueStrings5]
DebuggerRelatedValueG = [AntiDebuggingDebuggerRelatedValueStrings6, AntiDebuggingDebuggerRelatedValueStrings7, AntiDebuggingDebuggerRelatedValueStrings8, AntiDebuggingDebuggerRelatedValueStrings9]
DebuggerRelatedValueG.append(AntiDebuggingDebuggerRelatedValueStrings35)
DebuggerRelatedValueG.append(AntiDebuggingDebuggerRelatedValueStrings38)
DebuggerRelatedValueH = [AntiDebuggingDebuggerRelatedValueStrings10, AntiDebuggingDebuggerRelatedValueStrings11]
DebuggerRelatedValueI = [AntiDebuggingDebuggerRelatedValueStrings15, AntiDebuggingDebuggerRelatedValueStrings16, AntiDebuggingDebuggerRelatedValueStrings11]
DebuggerRelatedValueJ = [AntiDebuggingDebuggerRelatedValueStrings14,AntiDebuggingDebuggerRelatedValueStrings12]
DebuggerRelatedValueK = [AntiDebuggingDebuggerRelatedValueStrings15, AntiDebuggingDebuggerRelatedValueStrings21, AntiDebuggingDebuggerRelatedValueStrings14]
DebuggerRelatedValueL = [AntiDebuggingDebuggerRelatedValueStrings13, AntiDebuggingDebuggerRelatedValueStrings14]
DebuggerRelatedValueM = [AntiDebuggingDebuggerRelatedValueStrings15, AntiDebuggingDebuggerRelatedValueStrings23, AntiDebuggingDebuggerRelatedValueStrings14]
DebuggerRelatedValueN = [AntiDebuggingDebuggerRelatedValueStrings17]
DebuggerRelatedValueO = [AntiDebuggingDebuggerRelatedValueStrings18, AntiDebuggingDebuggerRelatedValueStrings19]
DebuggerRelatedValueP = [eval("AntiDebuggingDebuggerRelatedValueStrings"+str(i)) for i in range(24,30)]
DebuggerRelatedValueQ = [AntiDebuggingDebuggerRelatedValueStrings30]
DebuggerRelatedValueR = [eval("AntiDebuggingDebuggerRelatedValueStrings"+str(i)) for i in range(31,34)]
DebuggerRelatedValueS = [AntiDebuggingDebuggerRelatedValueStrings34]
DebuggerRelatedValueJ.append(AntiDebuggingDebuggerRelatedValueStrings36)
DebuggerRelatedValueJ.append(AntiDebuggingDebuggerRelatedValueStrings37)
DebuggerRelatedValueK.append(AntiDebuggingDebuggerRelatedValueStrings36)
DebuggerRelatedValueK.append(AntiDebuggingDebuggerRelatedValueStrings37)


'''
AntiDebuggingDebuggerRelatedValueDiscriminant
A javas1 “ro.debuggagle” string for the system property 原有
B javas2-3 “Android.os.SystemProperties” or “getProp” strings 原有
C javaa2-3 At least one of the attributes related to a debuggable status 原有
D natives1 “ro.debuggagle” string
E m4-m6 Methods related to the presence of a debugger 原有
F s4-5 查询23946端口状态
G s6-9 s35 调试器相关字符串
H s10 and s11      cmdline 1  检查当前进程的父进程或自身是否是 "zygote"
I s15 and s16 and s11 cmdline 2  检查当前进程的父进程或自身是否是 "zygote"
J s12 and s14 and s36 and s37  task1  apk进程
K s15 and s21 and s14 and s36 and s37 task2 apk进程
L s13 and s14  fd1 FD文件
M s15 and s23 and s14 fd2 FD文件
N s17 libart.so
O s18-19 安卓系统自带调试检测函数  找到进程中libdvm.so中的dvmDbgIsDebuggerConnected()函数  dalvik/art
P s24-29 
Q S30 P+Q status/stat中字段是否为T
R S31-33 
S S34 R+S wchan字段是否为ptrace_stop

((A∧B)∨C∨D)∨E∨F∨G∨(H∨I)∨J∨K∨L∨M∨(N∧O)∨(P∧Q)∨(R∧S)  #去除PQ

'''
#↓-------------OLD——————————————————————————————————————————————————————————————
AntiDebuggingAlteringDebuggerMemoryStringsNatives1 = "libart.so"
AntiDebuggingAlteringDebuggerMemoryStringsNatives2 = "_ZTVNa3rt4JDWP12JdwpAdbStateE"

AntiDebuggingAlteringDebuggerMemorySymbolsNativesy1 = "gDvm"
#↑-------------OLD——————————————————————————————————————————————————————————————

AlteringDebuggerMemoryA = [AntiDebuggingAlteringDebuggerMemoryStringsNatives1, AntiDebuggingAlteringDebuggerMemoryStringsNatives2, AntiDebuggingAlteringDebuggerMemorySymbolsNativesy1]
AlteringDebuggerMemoryB = [AntiDebuggingAlteringDebuggerMemorySymbolsNativesy1]
'''
AntiDebuggingAlteringDebuggerMemoryStructureDiscriminant
A natives1-2 both the strings extracted from the ART protection  
B i1  i1 the gDvm symbol for DALVIK
A or B
'''
HashValueComparisonm1 = "Ljava/security/MessageDigest.getInstance"
HashValueComparisonm2 = "Ljava/security/MessageDigest.digest"

HashValueComparisonm5 = "Ljava/security/Security.getProvider"
HashValueComparisonm6 = "Ljava/security/MessageDigest.getInstance"
HashValueComparisonm7 = "Ljava/util/zip/CRC32.update"
HashValueComparisonm8 = "Ljava/security/Key.hashCode"

HashValueComparisonm3 = "Ljava/lang/Class.getResourceAsStream"
HashValueComparisonm4 = "Ljava/lang/Class.getDeclaredMethod"


HashValueComparisonA = [HashValueComparisonm1, HashValueComparisonm2]
HashValueComparisonB = [HashValueComparisonm3, HashValueComparisonm4]

'''
AntiDebuggingHashValueComparisonDiscriminant  
A m1 and m2 MessageDigest
B m3-4  Class or Methods
'''

#UsingTimingCheck
AntiDebuggingUsingTimingChecks1 = "getrusage"
AntiDebuggingUsingTimingChecks2 = "clock"
AntiDebuggingUsingTimingChecks3 = "time"
AntiDebuggingUsingTimingChecks4 = "gettimeofday"
AntiDebuggingUsingTimingChecks5 = "clock_gettime"

AntiDebuggingUsingTimingCheckm1 = "Ljava/lang/System.nanoTime"
AntiDebuggingUsingTimingCheckm2 = "Ljava/lang/System.currentTimeMillis"
AntiDebuggingUsingTimingCheckm3 = "Landroid/os/SystemClock.elapsedRealtime"

UsingTimingCheckA = [eval("AntiDebuggingUsingTimingChecks"+str(i)) for i in range(1,6)]
UsingTimingCheckB = [AntiDebuggingUsingTimingCheckm1, AntiDebuggingUsingTimingCheckm2, AntiDebuggingUsingTimingCheckm3]
'''
AntiDebuggingUsingTimingCheckDiscriminant   仅从使用“时间函数”无法做出判断，必须结合上下文  待改进

A 获取时间相关的native层函数
B 获取时间相关的Java层函数
A or B

'''

AntiDebuggingUsingSignalsSymbolsnativesy1 = "signal"
AntiDebuggingUsingSignalsSymbolsnativesy2 = "sigaction"

AntiDebuggingUsingSignalsSymbolsnativesy3 = "kill"
AntiDebuggingUsingSignalsSymbolsnativesy4 = "raise"

UsingSignalsA = [eval("AntiDebuggingUsingSignalsSymbolsnativesy"+str(i)) for i in range(1,3)]    
UsingSignalsB = [eval("AntiDebuggingUsingSignalsSymbolsnativesy"+str(i)) for i in range(3,5)]
'''
AntiDebuggingUsingSignalsDiscriminant  待改进（只有发送的是SIGINT 2 , SIGTERM 15 ,SIGTRAP 5 信号才行）
A i1-2 Register signal related symbols
B i3-4 Send signals related symbols
A∧B
'''
AntiDebuggingPreemptPtraceAPIMethodsm1 = "Landroid/os/Process.myPid"
AntiDebuggingPreemptPtraceAPISymbolsnativesy1 = "getpid"
AntiDebuggingPreemptPtraceAPISymbolsnativesy2 = "Ptrace"

PreemptPtraceAPIA = [AntiDebuggingPreemptPtraceAPIMethodsm1, AntiDebuggingPreemptPtraceAPISymbolsnativesy1]
PreemptPtraceAPIB = [AntiDebuggingPreemptPtraceAPISymbolsnativesy2]
'''
AntiDebuggingPreemptPtraceAPIDiscriminant
A m1∨i1 Obtain the pid of the current process
B i2 Preempt Ptrace

A∧B
'''


#BreakpointInstructionDetection
#BreakpointInstructionDetectionHexcode1 = "F0 01 F0 E7"
#BreakpointInstructionDetectionHexcode2 = "10 DE"
BreakpointInstructionDetectionHexcode1 = b'\xf0\x01\xf0\xe7'
BreakpointInstructionDetectionHexcode2 = b'\x10\xde'
'''
1 and 2
'''

#AntiDump
AntiDumps1 = "inotify_init"
AntiDumps2 = "inotify_add_watch"

AntiDumps11 = "close"
AntiDumps12 = "getpid"
AntiDumps13 = "inotify_rm_watch"
AntiDumps14 = "memset"
AntiDumps15 = "pthread_create"
AntiDumps16 = "pthread_detach"
AntiDumps17 = "read"
AntiDumps18 = "select"




AntiDumps3 = "/proc/%d/maps"

AntiDumps4 = "/proc/"
AntiDumps5 = "getpid"
AntiDumps6 = "/maps"

AntiDumps7 = "/proc/%d/pagemap"
AntiDumps8 = "/pagemap"

AntiDumps9 = "/proc/%d/mem"
AntiDumps10 = "/mem"

AntiDumps11 = "memModify"
AntiDumps12 = "page_hijack"
AntiDumps13 = "cat /proc/sys/fs/inotify/max_user_watches"

AntiDumpA = [AntiDumps1, AntiDumps2,AntiDumps11,AntiDumps12,AntiDumps13,AntiDumps14,AntiDumps17]
AntiDumpB = [AntiDumps7, AntiDumps9]
AntiDumpC = [AntiDumps4, AntiDumps5]
AntiDumpD = [AntiDumps8, AntiDumps10]
AntiDumpE = [AntiDumps11,AntiDumps12,AntiDumps13]
'''
AntiDebuggingAntiDumpDiscriminant
A s1 and s2 inotify声明
B s3 s7 s9 完整maps/pagemap/mem   监视其中一个即可
C s4 and s5 /proc/ and getpid
D s6 s8 s10 maps/pagemap/mem  监视其中一个即可

A∧(B∨(C∧D))

'''


AntiDebuggingNumberofBreakpointsSymbolsnativesy1 = "BreakpointSet"
AntiDebuggingNumberofBreakpointsSymbolsnativesy2 = "count"
AntiDebuggingNumberofBreakpointsSymbolsnativesy3 = "breakpointCount"
AntiDebuggingNumberofBreakpointsSymbolsnativesy4 = "gDvm"
AntiDebuggingNumberofBreakpointsSymbolsnativesy5 = "size"

NumberofBreakpointsA = [AntiDebuggingNumberofBreakpointsSymbolsnativesy1,AntiDebuggingNumberofBreakpointsSymbolsnativesy4]
NumberofBreakpointsB = [AntiDebuggingNumberofBreakpointsSymbolsnativesy2,AntiDebuggingNumberofBreakpointsSymbolsnativesy3,AntiDebuggingNumberofBreakpointsSymbolsnativesy5]

'''
AntiDebuggingNumberofBreakpointsDiscriminant
A i1-2(同时) Checking Number of breakpoints
A and B
'''

AntiDebuggingBreakpointsetStructureSymbolsnativesy1 = "BreakpointSet"
AntiDebuggingBreakpointsetStructureSymbolsnativesy2 = "breakpoints"
AntiDebuggingBreakpointsetStructureSymbolsnativesy3 = "GetBreakpointSet"
AntiDebuggingBreakpointsetStructureSymbolsnativesy4 = "fBreakpointLines"
BreakpointsetStructureA = [AntiDebuggingBreakpointsetStructureSymbolsnativesy1, AntiDebuggingBreakpointsetStructureSymbolsnativesy2]
BreakpointsetStructureB = [AntiDebuggingBreakpointsetStructureSymbolsnativesy3,AntiDebuggingBreakpointsetStructureSymbolsnativesy4]
'''
AntiDebuggingBreakpointsetStructureDiscriminant
A i1-2 (同时) NULL is assigned to the breakpoint
A or B
'''

AntiDebuggingModifyJdwpStateJdwpTransportSymbolsnativesy1 = "JdwpState"
AntiDebuggingModifyJdwpStateJdwpTransportSymbolsnativesy2 = "JdwpTransport"
ModifyJdwpStateJdwpTransportA = [AntiDebuggingModifyJdwpStateJdwpTransportSymbolsnativesy1, AntiDebuggingModifyJdwpStateJdwpTransportSymbolsnativesy1]

'''
AntiDebuggingModifyJdwpState/JdwpTransportDiscriminant  去掉这一项
A i1-2 Modify JdwpState/JdwpTransport
A
'''

#Anti-Tampering part
#Anti-Tampering Signature Checking
#↓-------------OLD——————————————————————————————————————————————————————————————
AntiTamperingSignatureCheckingClassesc1 = "Ljava/security/MessageDigest;"
AntiTamperingSignatureCheckingClassesc2 = "Landroid/content/pm/PackageInfo;"
AntiTamperingSignatureCheckingClassesc3 = "Landroid/content/pm/Signature;"
AntiTamperingSignatureCheckingClassesc4 = "Landroid/content/pm/PackageManager;"
AntiTamperingSignatureCheckingClassesc5 = "Landroid/content/Context;"
AntiTamperingSignatureCheckingClassesc6 = "Landroid/content/pm/VersionedPackage;"
AntiTamperingSignatureCheckingClassesc7 = "Landroid/content/pm/SigningInfo;"

AntiTamperingSignatureCheckingMethodsm1 = "Ljava/security/MessageDigest.getInstance"
AntiTamperingSignatureCheckingMethodsm2 = "Ljava/security/MessageDigest.update"
AntiTamperingSignatureCheckingMethodsm3 = "Ljava/security/MessageDigest.digest"
AntiTamperingSignatureCheckingMethodsm4 = "Landroid/content/pm/PackageManager.getPackageInfo"
AntiTamperingSignatureCheckingMethodsm5 = "Landroid/content/pm/Signature.toByteArray"
AntiTamperingSignatureCheckingMethodsm6 = "Landroid/content/Context.getPackageManager"
AntiTamperingSignatureCheckingMethodsm7 = "Landroid/content/Context.getPackageName"
AntiTamperingSignatureCheckingMethodsm8 = "Landroid/content/pm/SigningInfo.getApkContentsSigners"
AntiTamperingSignatureCheckingMethodsm9 = "Landroid/content/pm/SigningInfo.getSigningCertificateHistory"

AntiTamperingSignatureCheckingAttributea1 = "Landroid/content/pm/PackageManager.GET_SIGNATURES"
AntiTamperingSignatureCheckingAttributea2 = "Landroid/content/pm/PackageManager.GET_SIGNING_CERTIFICATES"
AntiTamperingSignatureCheckingAttributea3 = "Landroid/content/pm/PackageInfo.signatures"

AntiTamperingSignatureCheckingStringsJavas1 = "MD2"
AntiTamperingSignatureCheckingStringsJavas2 = "MD5"
AntiTamperingSignatureCheckingStringsJavas3 = "SHA"
AntiTamperingSignatureCheckingStringsJavas4 = "SHA-1"
AntiTamperingSignatureCheckingStringsJavas5 = "SHA-224"
AntiTamperingSignatureCheckingStringsJavas6 = "SHA-256"
AntiTamperingSignatureCheckingStringsJavas7 = "SHA-384"
AntiTamperingSignatureCheckingStringsJavas8 = "SHA-512"
AntiTamperingSignatureCheckingStringsJavas9 = "No package found for authority:"
AntiTamperingSignatureCheckingStringsJavas10 = "Found content provider"
AntiTamperingSignatureCheckingStringsJavas11 = ", but package was not"

AntiTamperingSignatureCheckingStringsNatives1 = "META-INF/"
AntiTamperingSignatureCheckingStringsNatives2 = ".RSA"
AntiTamperingSignatureCheckingStringsNatives3 = ".DSA"
AntiTamperingSignatureCheckingStringsNatives4 = ".EC"
AntiTamperingSignatureCheckingStringsNatives5 = "/proc/self/cmdline"
AntiTamperingSignatureCheckingStringsNatives6 = "/proc/self/maps"
AntiTamperingSignatureCheckingStringsNatives7 = "tbsCertificate"
AntiTamperingSignatureCheckingStringsNatives8 = "version"
AntiTamperingSignatureCheckingStringsNatives9 = "serialNumber"
AntiTamperingSignatureCheckingStringsNatives10 = "signature"
AntiTamperingSignatureCheckingStringsNatives11 = "issuer"
AntiTamperingSignatureCheckingStringsNatives12 = "validity"
AntiTamperingSignatureCheckingStringsNatives13 = "subject"
AntiTamperingSignatureCheckingStringsNatives14 = "subjectPublicKeyInfo"
AntiTamperingSignatureCheckingStringsNatives15 = "issuerUniqueID-[optional]"
AntiTamperingSignatureCheckingStringsNatives16 = "subjectUniqueID-[optional]"
AntiTamperingSignatureCheckingStringsNatives17 = "extensions-[optional]"
AntiTamperingSignatureCheckingStringsNatives18 = "signatureAlgorithm"
AntiTamperingSignatureCheckingStringsNatives19 = "signatureValue"
AntiTamperingSignatureCheckingStringsNatives20 = "version"
AntiTamperingSignatureCheckingStringsNatives21 = "issuerAndSerialNumber"
AntiTamperingSignatureCheckingStringsNatives22 = "digestAlgorithmId"
AntiTamperingSignatureCheckingStringsNatives23 = "authenticatedAttributes-[optional]"
AntiTamperingSignatureCheckingStringsNatives24 = "digestEncryptionAlgorithmId"
AntiTamperingSignatureCheckingStringsNatives25 = "encryptedDigest"
AntiTamperingSignatureCheckingStringsNatives26 = "unauthenticatedAttributes-[optional]"
AntiTamperingSignatureCheckingStringsNatives27 = "DigestAlgorithms"
AntiTamperingSignatureCheckingStringsNatives28 = "contentInfo"
AntiTamperingSignatureCheckingStringsNatives29 = "crls-[optional]"
AntiTamperingSignatureCheckingStringsNatives30 = "signerInfos"
AntiTamperingSignatureCheckingStringsNatives31 = "signerInfo"
#↑-------------OLD——————————————————————————————————————————————————————————————
SignatureCheckingA = [eval("AntiTamperingSignatureCheckingStringsJavas"+str(i)) for i in range(1,9)] 
SignatureCheckingB = [AntiTamperingSignatureCheckingMethodsm1, AntiTamperingSignatureCheckingMethodsm2, AntiTamperingSignatureCheckingMethodsm3]
SignatureCheckingC = [AntiTamperingSignatureCheckingStringsJavas8, AntiTamperingSignatureCheckingStringsJavas9]
SignatureCheckingD = [AntiTamperingSignatureCheckingAttributea1, AntiTamperingSignatureCheckingAttributea2, AntiTamperingSignatureCheckingAttributea3]
SignatureCheckingE = [eval("AntiTamperingSignatureCheckingStringsNatives"+str(i)) for i in range(1,7)] 
'''
AntiTamperingSignatureCheckingDiscriminant

A javas1-8 At least one of strings for digest algorithm
B m1-3 All of methods for digest
C m8-9 At least one of methods for signatures
D a1-3 At least one of attribute for signatures
E natives1-6 All of the string for getting the certificate
F 是否存在证书
(A∧B∧(C∨D))∨E∨F

'''
#Anti-Tampering Code Integrity Checking
#↓-------------OLD——————————————————————————————————————————————————————————————
AntiTamperingCodeIntegrityCheckingClassess1 = "Ljava/util/zip/ZipFile;"
AntiTamperingCodeIntegrityCheckingClassess2 = "Ljava/util/zip/ZipEntry;"
AntiTamperingCodeIntegrityCheckingClassess3 = "Ljava/util/jar/JarFile;"
AntiTamperingCodeIntegrityCheckingClassess4 = "Ljava/util/jar/JarEntry;"
AntiTamperingCodeIntegrityCheckingClassess5 = "Ljava/util/zip/Adler32;"
AntiTamperingCodeIntegrityCheckingClassess6 = "Ljava/util/zip/CRC32;"
AntiTamperingCodeIntegrityCheckingClassess7 = "Landroid/content/Context;"
AntiTamperingCodeIntegrityCheckingClassess8 = "Landroid/content/pm/ApplicationInfo;"

AntiTamperingCodeIntegrityCheckingMehtodsm1 = "Landroid/content/Context.getPackageCodePath"
AntiTamperingCodeIntegrityCheckingMehtodsm2 = "Ljava/util/jar/JarEntry.getCrc"
AntiTamperingCodeIntegrityCheckingMehtodsm3 = "Ljava/util/zip/ZipEntry.getCrc"
AntiTamperingCodeIntegrityCheckingMehtodsm4 = "Ljava/util/zip/Adler32.update"
AntiTamperingCodeIntegrityCheckingMehtodsm5 = "Ljava/util/zip/CRC32.update"
AntiTamperingCodeIntegrityCheckingMehtodsm6 = "Ljava/util/zip/Adler32.getValue"
AntiTamperingCodeIntegrityCheckingMehtodsm7 = "Ljava/util/zip/CRC32.getValue"
AntiTamperingCodeIntegrityCheckingMehtodsm8 = "Ljava/util/zip/ZipFile.getEntry"
AntiTamperingCodeIntegrityCheckingMehtodsm9 = "Ljava/util/zip/ZipFile.entries"
AntiTamperingCodeIntegrityCheckingMehtodsm10 = "Ljava/util/jar/JarFile.getEntry"
AntiTamperingCodeIntegrityCheckingMehtodsm11 = "Ljava/util/jar/JarFile.entries"
AntiTamperingCodeIntegrityCheckingMehtodsm12 = "Ljava/util/jar/JarFile.getJarEntry"
AntiTamperingCodeIntegrityCheckingMehtodsm13 = "Landroid/content/Context.getString"

AntiTamperingCodeIntegrityCheckingAttributesa1 = "Landroid/content/pm/ApplicationInfo.sourceDir"

AntiTamperingCodeIntegrityCheckingStringsJavas1 = "classes.dex"
AntiTamperingCodeIntegrityCheckingStringsJavas2 = "classes2.dex"
AntiTamperingCodeIntegrityCheckingStringsJavas3 = "classes3.dex"
AntiTamperingCodeIntegrityCheckingStringsJavas4 = "classes4.dex"
AntiTamperingCodeIntegrityCheckingStringsJavas5 = "classes5.dex"
AntiTamperingCodeIntegrityCheckingStringsJavas6 = "MultiDexExtractor.load("
#↑-------------OLD——————————————————————————————————————————————————————————————
AntiTamperingCodeIntegrityCheckingMehtodsm14 = "Ljava/security/MessageDigest.getInstance"
AntiTamperingCodeIntegrityCheckingMehtodsm15 = "Ljava/security/MessageDigest.update"
AntiTamperingCodeIntegrityCheckingMehtodsm16 = "Ljava/security/MessageDigest.digest"

CodeIntegrityCheckingA = [eval("AntiTamperingCodeIntegrityCheckingStringsJavas"+str(i)) for i in range(1,6)] 
CodeIntegrityCheckingB = [AntiTamperingCodeIntegrityCheckingMehtodsm1]
CodeIntegrityCheckingC = [AntiTamperingCodeIntegrityCheckingAttributesa1]
CodeIntegrityCheckingD = [AntiTamperingCodeIntegrityCheckingMehtodsm2, AntiTamperingCodeIntegrityCheckingMehtodsm3]
CodeIntegrityCheckingE = [AntiTamperingCodeIntegrityCheckingMehtodsm4, AntiTamperingCodeIntegrityCheckingMehtodsm5, AntiTamperingCodeIntegrityCheckingMehtodsm6 ,AntiTamperingCodeIntegrityCheckingMehtodsm7]
CodeIntegrityCheckingF = [AntiTamperingCodeIntegrityCheckingMehtodsm14,AntiTamperingCodeIntegrityCheckingMehtodsm15,AntiTamperingCodeIntegrityCheckingMehtodsm16]
'''
AntiTamperingCodeIntegrityCheckingDiscriminant

A javas1-5 classes.dex strings
B m1 Method for getting the package code path
C a1 Attribute to get the package code path
D m2-3 At least one of the methods for the CRC
E m4-7 At least one of the methods for the CRC
F m14 and m15 and m16
A∧(B∨C)∧(D∨E∨F)


'''

#Anti-Tampering Installer Verification
#↓-------------OLD——————————————————————————————————————————————————————————————
AntiTamperingInstallerVerificationClassesc1 = "Landroid/content/pm/PackageInfo;"
AntiTamperingInstallerVerificationClassesc2 = "Landroid/content/pm/PackageManager;"
AntiTamperingInstallerVerificationClassesc3 = "Landroid/content/Context;"

AntiTamperingInstallerVerificationMethodsm1 = "Landroid/content/pm/PackageManager.getInstallerPackageName"
AntiTamperingInstallerVerificationMethodsm2 = "Landroid/content/Context.getPackageManager"
AntiTamperingInstallerVerificationMethodsm3 = "Landroid/content/Context.getPackageName"
AntiTamperingInstallerVerificationMethodsm4 = "Landroid/content/pm/PackageManager.getPackageInfo"


AntiTamperingInstallerVerificationAttributesa1 = "Landroid/content/pm/PackageInfo.packageName"
AntiTamperingInstallerVerificationAttributesa2 = "Landroid/content/pm/PackageInfo.versionCode"
AntiTamperingInstallerVerificationAttributesa3 = "Landroid/content/pm/PackageInfo.versionName"

AntiTamperingInstallerVerificationStringsJavas1 = "com.android.vending"
AntiTamperingInstallerVerificationStringsJavas2 = "com.amazon.venezia"
AntiTamperingInstallerVerificationStringsJavas3 = "com.sec.android.app.samsungapps"
AntiTamperingInstallerVerificationStringsJavas4 = "cm.aptoide.pt"
AntiTamperingInstallerVerificationStringsJavas5 = "org.fdroid.fdroid"
AntiTamperingInstallerVerificationStringsJavas6 = "com.uptodown"
AntiTamperingInstallerVerificationStringsJavas7 = "com.uptodown.lite"
AntiTamperingInstallerVerificationStringsJavas8 = "com.slideme.sam.manager"
#↑-------------OLD——————————————————————————————————————————————————————————————

AntiTamperingInstallerVerificationMethodsm5 = "lcom/google/android/play/core/splitcompat/SplitCompat.install"
AntiTamperingInstallerVerificationMethodsm6 = "Landroid/content/pm/PackageManager.verifyPackage"

InstallerVerificationA = [eval("AntiTamperingInstallerVerificationStringsJavas"+str(i)) for i in range(1,9)] 
InstallerVerificationB = [AntiTamperingInstallerVerificationMethodsm1]
InstallerVerificationD = [AntiTamperingInstallerVerificationMethodsm6]

'''
AntiTamperingInstallerVerificationDiscriminant

A s1-8 At least one of the stores names
B m1 method getInstallerPackageName
C manifest
D SplitCompat.install
A∧B or C or D
'''

#Anti-Tampering SafetyNet Attestation
#↓-------------OLD——————————————————————————————————————————————————————————————
AntiTamperingSafetyNetAttestationClassesc1 = "Lcom/google/android/gms/safetynet/SafetyNet;"
AntiTamperingSafetyNetAttestationClassesc2 = "Lcom/google/android/gms/safetynet/SafetyNetClient;"
AntiTamperingSafetyNetAttestationClassesc3 = "Lcom/google/android/gms/safetynet/SafetyNetApi;"
AntiTamperingSafetyNetAttestationClassesc4 = "Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResponse;"

AntiTamperingSafetyNetAttestationMethodsm1 = "Lcom/google/android/gms/safetynet/SafetyNet.getClient"
AntiTamperingSafetyNetAttestationMethodsm2 = "Lcom/google/android/gms/safetynet/SafetyNetClient.attest"
AntiTamperingSafetyNetAttestationMethodsm3 = "Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResponse.getJwsResult"

AntiTamperingSafetyNetAttestationStringsJavas1 = "basicIntegrity"
AntiTamperingSafetyNetAttestationStringsJavas2 = "ctsProfileMatch"
AntiTamperingSafetyNetAttestationStringsJavas3 = "apkDigestSha256"
AntiTamperingSafetyNetAttestationStringsJavas4 = "apkCertificateDigestSha256"
AntiTamperingSafetyNetAttestationStringsJavas5 = "apkPackageName"
AntiTamperingSafetyNetAttestationStringsJavas6 = "timestampMs"
AntiTamperingSafetyNetAttestationStringsJavas7 = "nonce"
#↑-------------OLD——————————————————————————————————————————————————————————————

AntiTamperingSafetyNetAttestationMethodsm4 = "Lcom/google/android/gms/safetynet/SafetyNetClient/AttestationRequest.Builder"
AntiTamperingSafetyNetAttestationMethodsm5 = "Lcom/google/android/gms/safetynet/SafetyNetApi/AttestationRequest/AttestationRequest.Builder"

AntiTamperingSafetyNetAttestationMethodsm6 = "Lcom/google/android/play/core/integrity/IntegrityManager.requestIntegrityToken"
AntiTamperingSafetyNetAttestationMethodsm7 = "Lcom/google/android/play/core/integrity/IntegrityManagerFactory.create"

AntiTamperingSafetyNetAttestationMethodsm8 = "Lcom/google/android/play/core/integrity/IntegrityVerifier.verify"

#AntiTamperingSafetyNetAttestationMethodsm9 = "Ljava/security/MessageDigest.getInstance"

AntiTamperingSafetyNetAttestationMethodsm10 = "lcom/google/android/gms/safetynet/safetynetapi.attest"

AntiTamperingSafetyNetAttestations1 = "appIntegrity"
AntiTamperingSafetyNetAttestations2 = "certificateSha256Digest"
AntiTamperingSafetyNetAttestations3 = "appRecognitionVerdict"

SafetyNetAttestationA = [AntiTamperingSafetyNetAttestationMethodsm1, AntiTamperingSafetyNetAttestationMethodsm2, AntiTamperingSafetyNetAttestationMethodsm3, AntiTamperingSafetyNetAttestationMethodsm4, AntiTamperingSafetyNetAttestationMethodsm5,AntiTamperingSafetyNetAttestationMethodsm10]
SafetyNetAttestationB = [AntiTamperingSafetyNetAttestationClassesc1, AntiTamperingSafetyNetAttestationClassesc2, AntiTamperingSafetyNetAttestationClassesc3, AntiTamperingSafetyNetAttestationClassesc4]

SafetyNetAttestationC = [AntiTamperingSafetyNetAttestationMethodsm6,AntiTamperingSafetyNetAttestationMethodsm7]
SafetyNetAttestationD = [AntiTamperingSafetyNetAttestationMethodsm8]
SafetyNetAttestationE = [AntiTamperingSafetyNetAttestations1,AntiTamperingSafetyNetAttestations2,AntiTamperingSafetyNetAttestations3]
'''
AntiTamperingSafetyNetAttestationDiscriminant

A m1-5 At least one of the methods
B c1-4 At least one of the classes
C c中一个
D 
(A∧B)∨(C∧(D∨E))
'''

#Root Detection part
#Root Detection Check Installed Packages
RootDetectionCheckInstalledPackagesStringsJavaAndNatives1 = "/system/bin"   #Likely contain su binary
RootDetectionCheckInstalledPackagesStringsJavaAndNatives2 = "/system/xbin"
RootDetectionCheckInstalledPackagesStringsJavaAndNatives3 = "/sbin"
RootDetectionCheckInstalledPackagesStringsJavaAndNatives4 = "/data/data"
RootDetectionCheckInstalledPackagesStringsJavaAndNatives5 = "/system/usr"
RootDetectionCheckInstalledPackagesStringsJavaAndNatives6 = "/system/bin.ext"

RootDetectionCheckInstalledPackagesStringsJavaAndNatives7 = "/system/app"  #APK files and cache
RootDetectionCheckInstalledPackagesStringsJavaAndNatives8 = "/data/app"
RootDetectionCheckInstalledPackagesStringsJavaAndNatives9 = "/data/dalvik-cache"


RootDetectionCheckInstalledPackagesStringsJavaAndNatives10 = "com.jrummy.root.browserfree" #Directory browsing
RootDetectionCheckInstalledPackagesStringsJavaAndNatives11 = "rootcloak xposed chainfire"  #Mount internal to external storage
RootDetectionCheckInstalledPackagesStringsJavaAndNatives12 = "com.oasisfeng.greenifiy"     #Android utility tool
RootDetectionCheckInstalledPackagesStringsJavaAndNatives13 = "com.jrummy.apps.build.prop.editor" #Modifying settings, System Properties, scanning device partition
RootDetectionCheckInstalledPackagesStringsJavaAndNatives14 = "com.grarak.kerneladiutor"
RootDetectionCheckInstalledPackagesStringsJavaAndNatives15 = "org.namelessrom.devicecontrol"
RootDetectionCheckInstalledPackagesStringsJavaAndNatives16 = "com.jumobile.manager.systemapp"
RootDetectionCheckInstalledPackagesStringsJavaAndNatives17 = "stericson.busybox"          #Linux commands utility
RootDetectionCheckInstalledPackagesStringsJavaAndNatives18 = "de.robv.adnroid.xposed.installer"     #Root hiding
RootDetectionCheckInstalledPackagesStringsJavaAndNatives19 = "com.devadvance.rootcloak"
RootDetectionCheckInstalledPackagesStringsJavaAndNatives20 = "com.devadvance.rootcloakplus"
RootDetectionCheckInstalledPackagesStringsJavaAndNatives21 = "com.noshufou.android.su"


RootDetectionCheckInstalledPackagesStringsJavaAndNatives21 = "daemonsu"   #Rooting-related binaries and daemons: these keywords are typical in rooted devices
RootDetectionCheckInstalledPackagesStringsJavaAndNatives22 = "superuser"
RootDetectionCheckInstalledPackagesStringsJavaAndNatives23 = "supersu"
RootDetectionCheckInstalledPackagesStringsJavaAndNatives24 = "kinguser"
RootDetectionCheckInstalledPackagesStringsJavaAndNatives25 = "kingroot"
RootDetectionCheckInstalledPackagesStringsJavaAndNatives26 = "busybox"
RootDetectionCheckInstalledPackagesStringsJavaAndNatives27 = "rootcloak" #Keywords related to evasion apps: to evade rooting check at Java code, RootCloak uses Xposed framework to perform interception with API calls
RootDetectionCheckInstalledPackagesStringsJavaAndNatives28 = "chainfire"
RootDetectionCheckInstalledPackagesStringsJavaAndNatives29 = "titanium"  #Keywords related to apps that require rooted device
RootDetectionCheckInstalledPackagesStringsJavaAndNatives30 = "greenify"
RootDetectionCheckInstalledPackagesStringsJavaAndNatives31 = "stericson"
RootDetectionCheckInstalledPackagesStringsJavaAndNatives32 = "kerneladiutor"

knownRootAppsPackages = ["eu.chainfire.supersu.pro","com.noshufou.android.su", "com.noshufou.android.su.elite", "eu.chainfire.supersu", "com.koushikdutta.superuser", "com.thirdparty.superuser", "com.yellowes.su", "com.topjohnwu.magisk", "com.kingroot.kinguser", "com.kingo.root", "com.smedialink.oneclickroot", "com.zhiqupk.root.global", "com.alephzain.framaroot","devadvance.rootcloak",".devadvance.rootcloakplus",".zachspong.temprootremovejb",".amphoras.hidemyroot",".formyhm.hideroot"]
knownRootCloakingPackages = ["com.devadvance.rootcloak", "com.devadvance.rootcloakplus", "de.robv.android.xposed.installer", "com.saurik.substrate", "com.zachspong.temprootremovejb", "com.amphoras.hidemyroot", "com.amphoras.hidemyrootadfree", "com.formyhm.hiderootPremium", "com.formyhm.hideroot"]
knownDangerousAppsPackages = ["com.koushikdutta.rommanager", "com.koushikdutta.rommanager.license", "com.dimonvideo.luckypatcher", "com.chelpus.lackypatch", "com.ramdroid.appquarantine", "com.ramdroid.appquarantinepro", "com.android.vending.billing.InAppBillingService.COIN", "com.android.vending.billing.InAppBillingService.LUCK", "com.chelpus.luckypatcher", "com.blackmartalpha", "org.blackmart.market", "com.allinone.free", "com.repodroid.app", "org.creeplays.hack", "com.baseappfull.fwd", "com.zmapp", "com.dv.marketmod.installer", "org.mobilism.android", "com.android.wp.net.log", "com.android.camera.update", "cc.madkite.freedom", "com.solohsu.android.edxp.manager", "org.meowcat.edxposed.manager", "com.xmodgame", "com.cih.game_cih", "com.charles.lpoqasert", "catch_.me_.if_.you_.can_"]
RootExa = ["cc.madkite.freedom", "devadvance.rootcloak", ".devadvance.rootcloakplus", ".zachspong.temprootremovejb", ".amphoras.hidemyroot", ".formyhm.hideroot", ".koushikdutta.rommanager", ".dimonvideo.luckypatcher", ".chelpus.lackypatch", ".ramdroid.appquarantine"]

CheckInstalledPackagesexa = knownRootAppsPackages + knownRootCloakingPackages + knownDangerousAppsPackages + RootExa

CheckInstalledPackagesexa = list(set(CheckInstalledPackagesexa))
CheckInstalledPackagesA = [eval("RootDetectionCheckInstalledPackagesStringsJavaAndNatives"+str(i)) for i in range(1,10)] 
CheckInstalledPackagesB = [eval("RootDetectionCheckInstalledPackagesStringsJavaAndNatives"+str(i)) for i in range(10,21)] 
CheckInstalledPackagesC = [eval("RootDetectionCheckInstalledPackagesStringsJavaAndNatives"+str(i)) for i in range(21,33)] 
CheckInstalledPackagesB = CheckInstalledPackagesB + CheckInstalledPackagesexa
'''
RootDetectionCheckInstalledPackagesDiscriminant

A s1-s9 Directories related strings
B s10-20 Package related strings
C s21-32 Keywords for rooting check related strings

B∨C

'''

#Root Detection Check Processes/Services
RootDetectionCheckProcessesServicesClassesc1 = "Landroid/app/ActivityManager;"
RootDetectionCheckProcessesServicesClassesc2 = "Landroid/content/Context;"
RootDetectionCheckProcessesServicesClassesc3 = "Landroid/app/ActivityManager$RunningAppProcessInfo;"
RootDetectionCheckProcessesServicesClassesc4 = "Landroid/app/ActivityManager$RunnigServiceInfo;" 

RootDetectionCheckProcessesServicesMethodsm1 = "Landroid/content/Context.getSystemService" #去掉
RootDetectionCheckProcessesServicesMethodsm2 = "Landroid/app/ActivityManager.getRunningServices"
RootDetectionCheckProcessesServicesMethodsm3 = "Landroid/app/ActivityManager.getRunningAppProcesses"


RootDetectionCheckProcessesServicesStringsJavas1 = "daemonsu"   #Rooting-related binaries and daemons: these keywords are typical in rooted devices
RootDetectionCheckProcessesServicesStringsJavas2 = "superuser"
RootDetectionCheckProcessesServicesStringsJavas3 = "supersu"
RootDetectionCheckProcessesServicesStringsJavas4 = "kinguser"
RootDetectionCheckProcessesServicesStringsJavas5 = "kingroot"
RootDetectionCheckProcessesServicesStringsJavas6 = "busybox"
RootDetectionCheckProcessesServicesStringsJavas7 = "rootcloak" #Keywords related to evasion apps: to evade rooting check at Java code, RootCloak uses Xposed framework to perform interception with API calls
RootDetectionCheckProcessesServicesStringsJavas8 = "chainfire"
RootDetectionCheckProcessesServicesStringsJavas9 = "titanium"  #Keywords related to apps that require rooted device
RootDetectionCheckProcessesServicesStringsJavas10 = "greenify"
RootDetectionCheckProcessesServicesStringsJavas11 = "stericson"
RootDetectionCheckProcessesServicesStringsJavas12 = "kerneladiutor"

RootDetectionCheckProcessesServicesStringsNatives1 = "daemonsu"   #Rooting-related binaries and daemons: these keywords are typical in rooted devices
RootDetectionCheckProcessesServicesStringsNatives2 = "superuser"
RootDetectionCheckProcessesServicesStringsNatives3 = "supersu"
RootDetectionCheckProcessesServicesStringsNatives4 = "kinguser"
RootDetectionCheckProcessesServicesStringsNatives5 = "kingroot"
RootDetectionCheckProcessesServicesStringsNatives6 = "busybox"
RootDetectionCheckProcessesServicesStringsNatives7 = "rootcloak" #Keywords related to evasion apps: to evade rooting check at Java code, RootCloak uses Xposed framework to perform interception with API calls
RootDetectionCheckProcessesServicesStringsNatives8 = "chainfire"
RootDetectionCheckProcessesServicesStringsNatives9 = "titanium"  #Keywords related to apps that require rooted device
RootDetectionCheckProcessesServicesStringsNatives10 = "greenify"
RootDetectionCheckProcessesServicesStringsNatives11 = "stericson"
RootDetectionCheckProcessesServicesStringsNatives12 = "kerneladiutor"

CheckProcessesServicesA = [eval("RootDetectionCheckProcessesServicesClassesc"+str(i)) for i in range(1,5)] 
CheckProcessesServicesB = [eval("RootDetectionCheckProcessesServicesMethodsm"+str(i)) for i in range(2,4)] 
CheckProcessesServicesC = [eval("RootDetectionCheckProcessesServicesStringsJavas"+str(i)) for i in range(1,13)] 
CheckProcessesServicesD = [eval("RootDetectionCheckProcessesServicesStringsNatives"+str(i)) for i in range(1,13)] 


'''
RootDetectionCheckProcesses/ServicesDiscriminant
A c1-4 Acquire Processes/Services related Classes
B m2-3Acquire Processes/Services related Methods and not m1
C Javas1-12 Processes/Services related Strings
D Natives1-12 Processes/Services related Strings
(A∧B∧C)
'''

#Root Detection Check Shell Commands Execution
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives33 = "pm list packages"
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives34 = "ls"
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives35 = "cat"
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives36 = "ps -x"


RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives1 = "/system/bin"   #Likely contain su binary
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives2 = "/system/xbin"
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives3 = "/sbin"
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives4 = "/data/data"
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives5 = "/system/usr"
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives6 = "/system/bin.ext"

RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives7 = "/system/app"  #APK files and cache
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives8 = "/data/app"
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives9 = "/data/dalvik-cache"


RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives10 = "com.jrummy.root.browserfree" #Directory browsing
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives11 = "rootcloak xposed chainfire"  #Mount internal to external storage
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives12 = "com.oasisfeng.greenifiy"     #Android utility tool
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives13 = "com.jrummy.apps.build.prop.editor" #Modifying settings, System Properties, scanning device partition
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives14 = "com.grarak.kerneladiutor"
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives15 = "org.namelessrom.devicecontrol"
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives16 = "com.jumobile.manager.systemapp"
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives17 = "stericson.busybox"          #Linux commands utility
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives18 = "de.robv.adnroid.xposed.installer"     #Root hiding
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives19 = "com.devadvance.rootcloak"
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives20 = "com.devadvance.rootcloakplus"

RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives21 = "daemonsu"   #Rooting-related binaries and daemons: these keywords are typical in rooted devices
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives22 = "superuser"
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives23 = "supersu"
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives24 = "kinguser"
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives25 = "kingroot"
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives26 = "busybox"
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives27 = "rootcloak" #Keywords related to evasion apps: to evade rooting check at Java code, RootCloak uses Xposed framework to perform interception with API calls
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives28 = "chainfire"
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives29 = "titanium"  #Keywords related to apps that require rooted device
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives30 = "greenify"
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives31 = "stericson"
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives32 = "kerneladiutor"

RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives37 = "/sbin/su"
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives38 = "/system/bin/su"
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives39 = "/system/xbin/su"
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives40 = "/data/local/xbin/su"
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives41 = "/data/local/bin/su"
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives42 = "/system/sd/xbin/su"
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives43 = "/system/bin/failsafe/su"
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives44 = "/data/local/su"
RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives45 = "/system/xbin/which su"


checkSu = ["/sbin/", "/system/bin/", "/system/xbin/", "/data/local/xbin/", "/data/local/bin/", "/system/sd/xbin/", "/system/bin/failsafe/", "/data/local/"]
checkSuexa = ["/system/bin/sh",  "type su"]
CheckShellCommandsExecutionA = [eval("RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives"+str(i)) for i in range(33,38)] 
CheckShellCommandsExecutionB = [eval("RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives"+str(i)) for i in range(10,32)] 
CheckShellCommandsExecutionC = [eval("RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives"+str(i)) for i in range(37,46)] 
CheckShellCommandsExecutionD = [RootDetectionCheckShellCommandsExecutionStringsJavaAndNatives39]
CheckShellCommandsExecutionC = CheckShellCommandsExecutionC
CheckShellCommandsExecutionE = checkSuexa
'''
RootDetectionCheckShellCommandsExecutionDiscriminant

A s33-36 Shell Command related Strings
B s10-32 content of execution related Strings
C s37-44 su可能的位置
A∧(B∨C) -》 C
checkSu
'''

#Root Detection Check Build Tag and System Properties
RootDetectionCheckBuildTagandSystemPropertiesa1 = "Landroid/os/Build.TAGS"

RootDetectionCheckBuildTagandSystemPropertiesStringsJavas1 = "test-keys"
RootDetectionCheckBuildTagandSystemPropertiesStringsJavas2 = "release-keys"

RootDetectionCheckBuildTagandSystemPropertiesStringsJavaAndNatives1 = "readSystemProperty(\"ro.debuggable\")"
RootDetectionCheckBuildTagandSystemPropertiesStringsJavaAndNatives2 = "readSystemProperty(\"ro.secure\")"
RootDetectionCheckBuildTagandSystemPropertiesStringsJavaAndNatives3 ="adb shell getprop ro.secure"
RootDetectionCheckBuildTagandSystemPropertiesStringsJavaAndNatives4 ="adb shell getprop ro.debuggable"

RootDetectionCheckBuildTagandSystemPropertiesStringsJavaAndNatives5 = "getprop |grep -wE \"ro.debuggable |ro.secure\""
RootDetectionCheckBuildTagandSystemPropertiesStringsJavaAndNatives6 = "adb shell getprop | grep -wE \"ro.debuggable|ro.secure\""

RootDetectionCheckBuildTagandSystemPropertiesStringsJavaAndNatives7 = "getprop ro.secure"
RootDetectionCheckBuildTagandSystemPropertiesStringsJavaAndNatives8 = "getprop ro.debuggable"

RootDetectionCheckBuildTagandSystemPropertiesm1 = "Landroid/os/SystemProperties.get"
RootDetectionCheckBuildTagandSystemPropertiesStringsJavaAndNatives9 = "android.os.SystemProperties"

RootDetectionCheckBuildTagandSystemPropertiesStringsJavaAndNatives10 = "ro.secure"
RootDetectionCheckBuildTagandSystemPropertiesStringsJavaAndNatives11 = "ro.debuggable"

RootDetectionCheckBuildTagandSystemPropertiesStringsJavaAndNatives12 = "getprop"
RootDetectionCheckBuildTagandSystemPropertiesStringsJavaAndNatives13 = "ro.build.selinux"

CheckBuildTagandSystemPropertiesA = [RootDetectionCheckBuildTagandSystemPropertiesStringsJavas1,RootDetectionCheckBuildTagandSystemPropertiesa1]
CheckBuildTagandSystemPropertiesB = [RootDetectionCheckBuildTagandSystemPropertiesStringsJavaAndNatives3,RootDetectionCheckBuildTagandSystemPropertiesStringsJavaAndNatives4]
CheckBuildTagandSystemPropertiesC = [RootDetectionCheckBuildTagandSystemPropertiesStringsJavaAndNatives5,RootDetectionCheckBuildTagandSystemPropertiesStringsJavaAndNatives6]
CheckBuildTagandSystemPropertiesD = [RootDetectionCheckBuildTagandSystemPropertiesStringsJavaAndNatives7,RootDetectionCheckBuildTagandSystemPropertiesStringsJavaAndNatives8]
CheckBuildTagandSystemPropertiesE = [RootDetectionCheckBuildTagandSystemPropertiesm1]
CheckBuildTagandSystemPropertiesF = [RootDetectionCheckBuildTagandSystemPropertiesStringsJavaAndNatives9,RootDetectionCheckBuildTagandSystemPropertiesStringsJavaAndNatives12]
CheckBuildTagandSystemPropertiesG = [RootDetectionCheckBuildTagandSystemPropertiesStringsJavaAndNatives10,RootDetectionCheckBuildTagandSystemPropertiesStringsJavaAndNatives11]
CheckBuildTagandSystemPropertiesH = [RootDetectionCheckBuildTagandSystemPropertiesStringsJavaAndNatives13, RootDetectionCheckBuildTagandSystemPropertiesStringsJavaAndNatives9]
'''
RootDetectionCheckBuildTagandSystemPropertiesDiscriminant
A s1 and a1 
B s3 and s4
C s5 or s6
D s7 and s8
E m1
F s9 s12
G m10 and m11
H s9 and s13
A or B or C or D or((E or F) and G ) or H
'''
#Root Detection Directory Permissions
RootDetectionDirectoryPermissionsStringsJavaAndNatives1 = "/system/bin"   #Likely contain su binary
RootDetectionDirectoryPermissionsStringsJavaAndNatives2 = "/system/xbin"
RootDetectionDirectoryPermissionsStringsJavaAndNatives3 = "/sbin"
RootDetectionDirectoryPermissionsStringsJavaAndNatives4 = "/data/data"
RootDetectionDirectoryPermissionsStringsJavaAndNatives5 = "/system/usr"
RootDetectionDirectoryPermissionsStringsJavaAndNatives6 = "/system/bin.ext"
RootDetectionDirectoryPermissionsStringsJavaAndNatives7 = "/system/app"  #APK files and cache
RootDetectionDirectoryPermissionsStringsJavaAndNatives8 = "/data/app"
RootDetectionDirectoryPermissionsStringsJavaAndNatives9 = "/data/dalvik-cache"
RootDetectionDirectoryPermissionsStringsJavaAndNatives10 = "/system"
RootDetectionDirectoryPermissionsStringsJavaAndNatives11 = "/etc"
RootDetectionDirectoryPermissionsStringsJavaAndNatives12 = "/system/sbin"
RootDetectionDirectoryPermissionsStringsJavaAndNatives13 = "/vendor/bin"


RootDetectionDirectoryPermissionsStringsJavaAndNatives14 = "ls -l"
RootDetectionDirectoryPermissionsStringsJavaAndNatives15 = "ls -la"
RootDetectionDirectoryPermissionsStringsJavaAndNatives16 = "stat"
RootDetectionDirectoryPermissionsStringsJavaAndNatives17 = "lsattr"
RootDetectionDirectoryPermissionsStringsJavaAndNatives18 = "RW"
RootDetectionDirectoryPermissionsStringsJavaAndNatives19 = "mount"

DirectoryPermissionsA = [eval("RootDetectionDirectoryPermissionsStringsJavaAndNatives"+str(i)) for i in range(1,14)] 
DirectoryPermissionsB = [eval("RootDetectionDirectoryPermissionsStringsJavaAndNatives"+str(i)) for i in range(14,20)]
'''
RootDetectionDirectoryPermissionsDiscriminant
A s1-9 Directory related Strings
B s10 Query permission related String

A∧B
'''

#Anti-Tainting part

#AntiTaintingControlDependence
#AntiTaintingControlDependenceSimpleEncodingAttack

'''
AntiTaintingControlDependenceSimpleEncodingAttackDiscriminant
for each symbol in Asciitable:
    if symbol == X:
        Y = X
'''

#AntiTaintingControlDependenceSimpleCount-to-XAttack
'''
AntiTaintingControlDependenceSimpleCount-to-XAttackDiscriminant
while i<x
    i++
y=i
    
'''

#AntiTaintingControlDependenceSimpleDeliberateExceptionAttack
'''
AntiTaintingControlDependenceSimpleDeliberateExceptionAttackDiscriminant
触发x次异常
在异常中每次y++
'''

#AntiTaintingSubversionofBenignCode
#AntiTaintingSubversionofBenignCodeSystemCommandAttack
'''
AntiTaintingSubversionofBenignCodeSystemCommandAttackDiscriminant

echo/printf 等命令 打印出x的值，在赋给y
'''

#AntiTaintingSubversionofBenignCodeSystem–FileHybridAttack
'''
AntiTaintingSubversionofBenignCodeSystem–FileHybridAttackDiscriminant
写入文件然后再读出
echo 写入
read/cat/xxd/hd/od/hexdump/dd
'''


#AntiTaintingSideChannels
#AntiTaintingSideChannelsTimingAttack
'''
AntiTaintingSideChannelsTimingAttackDiscriminant
T1 = date
sleep x秒
T2 = date

y = T2 - T1
'''

#AntiTaintingSideChannelsFileLengthAttack
'''
AntiTaintingSideChannelsFileLengthDiscriminant
F = CreateNewFileHandle()
z = 0
while z < x :
    WriteOneByte(F)
    z = z++

Y = ReadFileLength(F)
'''

#AntiTaintingSideChannelsBitmapCacheAttack
'''
AntiTaintingSideChannelsBitmapCacheAttackDiscriminant
B = CreateNewBitmap()
SetPixel([10,10],X -> B)
Y = GetPixel(B,[10,10])
'''

#AntiTaintingSideChannelsTextScalingAttack
'''
AntiTaintingSideChannelsTextScalingAttackDiscriminant
T = TextViewWidget()
T = SetTextScalingValue(X)
Y = GetTextScalingValue(T)
'''

#AntiTaintingSideChannelsDirectBufferAttack
'''
AntiTaintingSideChannelsDirectBufferAttackDiscriminant
D = NewDirectAccessBuffer()
DirectMemoryWrite(X,0xXX -> D)
Y = DirectMemoryRead(D,0xXX)
'''



