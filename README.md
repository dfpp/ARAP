# ARAP
ARAP is an Android anti-analysis technology detector based on Androguard

1. Place the APKs you want to analyze in the apks directory.
   Please first rename the apk file to the expected sha256 value.
   
2. Run Pretreatment.py
   
3. Run ARAP.py

4. The analysis results are stored in the newly generated output_xxx directory.

# APK analysis reports
APK analysis reports are in the master branch.

# AOSP
ARAP matching custom AOSP is available at https://drive.google.com/drive/folders/12ewC9p7cd_23I8Qgd-s8KyRsociIhMFJ?usp=drive_link.

# What are Anti Runtime Analysis techniques?
Android Anti Runtime Analysis techniques (ARA techniques) refer to a set of technical methods or approaches employed in Android applications to protect them from dynamic runtime analysis attacks. It is worth noting that obfuscation, as a common anti-static analysis technique, is not within the scope of our research in this paper.

# ARA techniques 
The emergence of these ARA is driven by the different motivations of benign application developers and malicious application developers.  Benign application developers may use ARA techniques to protect intellectual property, prevent reverse engineering, and deter malicious behavior.  Conversely, malicious application developers employ ARA techniques to conceal malicious activities, evade detection and prevention, and enhance the persistence of their applications.  These motivations have propelled the development and application of ARA technologies.

## Anti-debugging 
Anti-debugging is a technique used to protect applications from malicious analysts' attacks and reverse engineering. This technique involves inserting anti-debugging code into the application code, making it difficult for malicious analysts to use debuggers and other tools to debug and reverse engineer the application. Deploying appropriate anti-debugging techniques can effectively enhance the security and resilience of applications against malicious attacks.

### Using Timing Check (UTC)
The Using Timing Check technique detects the presence of a debugger by leveraging the speed difference between the execution of code by the debugger and the debugged application. Developers insert a code segment within the application that performs a calculation and returns a result. Under normal circumstances, this code segment should complete the calculation and return the result in a very short time. However, if the application is being debugged, the debugger may interfere with the execution of the code, causing the calculation to take longer. 

### Using Signals (US)
The Using Signals technique exploits the difference in signal handling between the debugged application and the debugger. Developers insert a code segment within the application that sends a SIGTRAP signal to itself. Under normal circumstances, the application captures and handles this signal, but if the application is being debugged, the debugger captures the signal and pauses the application's execution to facilitate debugging. Therefore, the Using Signals technique detects whether an application is being debugged by checking if it has received a SIGTRAP signal. Other signals with similar functionality to SIGTRAP can also accomplish this task.

### Using TracerPID (UTP)
The TracerPID status value of an application is recorded in the /proc/PID/status file. Under normal circumstances, the TracerPID status value should be 0, indicating that the application is not being traced. However, if the application is being debugged, the TracerPID status value of the application changes to the PID value of the debugger process attached to it. Therefore, by checking whether the TracerPID status value in the /proc/PID/status file is zero, the application can determine whether it is being debugged.

### Preempt Ptrace API (PPA)
In the Android system, each process has a unique Process ID (PID). When a process calls the ptrace system call and passes its own PID as a parameter, it is marked as being debugged. Since a process can only be attached by one process at a time, if an application has attached itself, no other process can attach to that application, not even a debugger. Therefore, developers can proactively attach themselves to the application at startup to prevent a debugger from attaching to the program.

### Anti-Dumping (ADU)
Anti-dumping is used to prevent an application's code from being dumped to disk, thus preventing attackers from analyzing the code. Inotify event monitoring of dumping is a common implementation method. Inotify is a file system event notification mechanism provided by the Linux kernel that can monitor changes to files or directories and notify the corresponding process when a change occurs. Developers can create an Inotify instance using the Inotify API and monitor the target file or directory by calling the Inotify\_add\_watch function. Developers can determine whether a process is attempting to dump the application's code by capturing Inotify events and can take appropriate measures, such as self-destruction or triggering an alert.

### Debuggable and Debugger Features (DDF)
The Android system offers a range of APIs to detect the presence of a debugger. These APIs, such as isDebuggerConnected and waitingForDebugger, allow for quick determination of whether a debugger is connected. Furthermore, the existence of a debugger can be identified by examining specific indicators, such as checking for the utilization of port 23946 or searching for processes named "android_server" or "gdb_server," among others.

### Using Breakpointset Structure (UBS)
The Breakpointset Structure is used to store information about all breakpoints set in a process, including their addresses, number, and other detailed information. Developers can use this structure to detect and block the debugger from working. For example, developers can check the number of breakpoints set in the program, and if it is not zero, assume that the program may be in debug mode. Alternatively, they can intentionally assign a null pointer to the breakpoint set, causing the process to terminate due to incorrect memory access, thus preventing the debugger from running.

### Altering Debugger Memory (ADM)
Altering Debugger Memory is a method of manipulating the behavior of a debugger by modifying the global virtual machine state of a running application. In Dalvik, this could be achieved by accessing the DvmGlobals structure pointed to by the global variable gDvm. In ART, although the gDvm variable is no longer available, the ART runtime exports some JDWP-related pointers as global symbols. Applications can modify the behavior of the debugger by overwriting these variables, such as replacing the function pointer that handles debugger with a pointer to a function that always returns false, or replacing the address of the function jdwpAdbState::ProcessIncoming with the address of the function jdwpAdbState::Shutdown, causing the debugger to immediately 

## Virtual Environment Detection (VED)
The main purpose of this technique is to detect whether a device is running in a virtual environment. For malicious applications, by detecting whether the device is running in a virtual environment, they can decide whether to exhibit malicious behavior to evade detection. For benign applications, developers can determine whether their application is running in a secure environment. When a virtual environment is detected, developers can take some countermeasures according to their needs, such as denying the application to run in a virtual environment to protect the security and integrity of the application.

### Emulator Detection (ED)
Emulator Detection refers to a type of technology that is used to detect and defend against applications running in an emulator or virtual machine environment, to prevent malicious attacks, anti-debugging, cracking, or other fraudulent behavior. Emulator Detection technology typically detects features of the emulator or virtual machine and takes corresponding actions when these features are detected, such as shutting down the application or displaying warning messages.

#### Device Identifier (DI)
In the Android system, each device has a unique device identifier called Android ID. However, in emulators or virtual machines, the same Android ID is often used, so it is possible to detect whether the current device is an emulator by checking if the Android ID matches the real device's Android ID. 

#### Current Build (CB)
Detecting the current build is one of the common anti-emulator techniques. The current build refers to the current operating system version and its related parameters, such as kernel version, firmware version, compilation time, etc. In emulators or virtual machines, specific build parameters are often used, so detecting whether the current build matches the current build of a real device can determine whether the current device is an emulator.

#### Telephony Manager (TM)
Telephony Manager is a system service in the Android operating system that provides information related to mobile communication, such as the device's IMSI, IMEI, phone number, etc. In emulators or virtual machines, real mobile communication functionality is usually not provided, so it is possible to detect whether the current device is an emulator by checking whether the information provided by Telephony Manager is empty or matches the information of a real device.

#### Hardware Components (HC)
When an application runs in an emulator or virtual machine environment, it usually simulates some hardware components, and the information of these components may be different from that of a real device. Therefore, it is possible to determine whether the current device is an emulator by reading the hardware information provided by the emulator. These hardware information can be obtained by reading the hardware information files (such as /proc/cpuinfo, /proc/meminfo, /proc/version, etc.) in the /proc file system and the CPU-related files (such as cpuinfo_max_freq, cpuinfo_min_freq, etc.) under the /sys/devices/system/CPU/cpu0/cpufreq/ directory. In addition to CPU information, other hardware component information can also be obtained, such as device screen resolution, RAM size, cameras, etc. If the information of these hardware components does not match the real device, it can be inferred that the current device may be an emulator or virtual machine.

#### Emulator Related Strings (ERS)
This technique leverages the differences between emulators and real devices in certain strings and system properties to detect whether the current device is an emulator. Some common features include strings such as "generic" and "Genymotion," system properties such as "ro.kernel.qemu," and files such as "/dev/socket/qemud". These strings, properties, and files are often present in emulator environments but rarely or never found on real devices.

#### Sensor Information (SI)
In a simulator, sensor data is often fixed or random due to the lack of real sensor hardware. On a real device, sensor data typically varies based on the device's actual movement and changes in the surrounding environment. Therefore, by obtaining and analyzing sensor data, an application can determine if the current device is a simulator. Some commonly used sensors include accelerometers, gyroscopes, light sensors, and so on.

#### CPU Performance
When running applications on a simulator, the simulator needs to try to simulate CPU execution on a real device. However, due to hardware and software differences between the simulator and the real device, as well as performance limitations of the simulator, it is difficult for the simulator to completely simulate CPU execution on a real device, which may result in execution differences. QEMU is a commonly used open-source emulator that can simulate various computer architectures. In Android development, QEMU is also widely used as an Android emulator. It can simulate Android device components such as the CPU and memory, and can run on different platforms. Due to its flexibility and customizability, QEMU is widely used in Android development and security. In this section, we only consider QEMU-based emulators.

##### Context Switch Based Detection (CSBD)
In QEMU, instruction translation is cached into a data structure called "translation block cache" to accelerate the execution of the emulator in subsequent runs. There will be no race conditions within the same basic block, even without locking. To detect the presence of an emulator, a code segment that triggers a race condition can be constructed for testing. On a real device, this code will cause a context switch and thus a race condition. However, in the emulator, no race condition will be observed.

##### Translation Block Cache Based Detection (TBCBD)
Translation Block Cache Based Detection utilizes QEMU's Translation Block (TB) caching mechanism. When QEMU runs, the instructions it executes are translated into a series of basic blocks, which are cached in the TB for improved performance. When the same instructions are executed again, QEMU will call the cached basic blocks from the TB, without needing to decode and translate the instructions again. When executing self-modifying code in the emulator, these codes will break the TB cache because the cached basic blocks may no longer be valid. This will cause QEMU to have to decode and translate instructions again, resulting in a significant increase in execution time. On a real device, since there is no TB caching mechanism, executing self-modifying code will not cause similar performance degradation.

##### Misaligned Vectorization Based Detection (MVBD)
On real devices, high-performance vectorized instructions such as Intel SIMD and ARM NEON do not support unaligned memory access, which can cause application errors. However, in a simulator, since memory access is ultimately reconstructed at the software level, unaligned vectorized operations can be executed normally without causing application errors, allowing this difference to be used to distinguish between real devices and simulators.

### App-Level Virtualization Detection (ALVD)
Android App-Level Virtualization technology is an innovative virtualization technique that allows loading and running any client application's APK file within a host application, improving the flexibility and interoperability of applications. It takes over the system services by intercepting them to achieve a more flexible runtime environment. Unlike traditional emulators that typically run virtual machines on computers to simulate device environments, App-Level Virtualization technology creates a virtual environment on a real device to run applications. Therefore, some traditional emulator detection methods may fail to detect it.

#### File Path (FP)
Detecting the use of App-Level Virtualization is commonly done by checking file paths. One method is to check if the current application's path is included in the paths of multi-instance applications. Multi-instance applications usually store the files of their included applications in different directories. Therefore, if the current application's path is included in the paths of multi-instance applications, it can be assumed that the current application is running in a virtualized environment. Another method is to search for two different "base.apk" paths in the process memory: one belonging to the guest application and the other to the host application. If two different paths are found, it can be assumed that the current application is running in a virtualized environment.

#### Share UID (SU)
When using App-Level Virtualization technology, the host and guest applications usually share the same User ID (UID). This is because the host application is responsible for providing the virtualization environment for the guest applications and must therefore share the same system permissions as the guest applications. Therefore, by checking whether there are multiple applications on a device with the same UID, it is possible to detect whether App-Level Virtualization technology is being used.

#### Port Detection (PD)
In this technique, the application will always listen to a specific port at runtime and send a message to that port during initialization. Once the application receives this message, it will automatically close. If attempting to start another instance, the same process will be repeated, and the previous instance will be closed on the new instance. This achieves the effect of preventing the application from being opened multiple times.

#### Code Injection and Hooking (CIH)
Code Injection and Hooking techniques can be used to detect App-Level Virtualization, with two methods available. The first method involves directly searching for suspicious shared object (so) libraries, as in App-Level Virtualization, the host application usually employs its own so libraries to manage guest applications. Hence, searching for suspicious strings or functions in an application's so library is a commonly used detection method. The second method involves using stack tracing to determine if the callActivityOnCreate method is executed multiple times. In App-Level Virtualization, the host application rewrites the start function of an Activity by hooking system calls, thus achieving the capability to launch multiple instances of an Activity. As such, detecting the presence of App-Level Virtualization can be achieved by checking whether the callActivityOnCreate method is executed multiple times in the stack.

## Anti-Tampering (AT)
"Anti-Tampering" is designed to prevent malicious attackers from tampering or repackaging applications. Implementing an Anti-Tampering mechanism in an application can effectively protect it from malicious modifications, thereby ensuring the security and integrity of the application.

### Signature Checking (SC)
The working principle of Signature Che-cking is to verify the integrity and authenticity of an application by examining its digital signature. In the Android system, an application's digital signature is generated by the application developer using a private key, which serves as proof that the application comes from the developer and has not been tampered with. Typically, an application's digital signature in the Android system is stored in the META-INF directory of the APK file, in a file named CERT.RSA.
Specifically, the Android V2 and later signature mechanisms have strong anti-tampering capabilities, which can effectively ensure the integrity of the APK. In addition, developers can further compare the current app's signature with the one stored on a remote server during the program's runtime to ensure the integrity of the APK.

### Code Integrity Checking (CIC)
Code Integrity Checking refers to the process of verifying the integrity of an application's code during runtime. Developers can actively calculate the hash value of a specific file during runtime and compare it with the expected value. If the two values differ, it indicates that the application may have been tampered with. At this point, developers can choose to prompt the user with relevant error information and close the application.

### SafetyNet Attestation (SA)
SafetyNet Attestation is a security validation service for Android applications introduced by Google, aimed at helping developers protect their applications from malicious attacks and tampering. It can check the integrity and authenticity of applications, ensuring they have not been tampered with or maliciously modified. Developers can add a dependency on SafetyNet Attestation and use the SafetyNet API in their applications.
It is worth noting that Google will gradually discontinue the use of the SafetyNet Attestation API starting in 2024 and encourage the use of the Play Integrity API, which is a more secure solution. We will also consider the Play Integrity API in our work.

### Installer Verification (IV)
The purpose of Installer Verification is to ensure that the installation program is from a trusted source. For example, if a developer only uploads an application to the Google Play Store, but the installation source is from another app market, it may indicate a risk of repackaging the application. Developers can enable Installer Verification by adding "android:verification="true"" to the application manifest file (AndroidManifest.xml).

## Anti-Hooking (AH)
Android Hooking techniques refer to the use of hooking technology by attackers to monitor, modify, or tamper with the behavior of an application, thereby carrying out malicious attacks or stealing sensitive information. Commonly used tools include Xposed and Frida.

### Xposed
Xposed is an open-source hooking framework that allows developers to modify the behavior of applications by writing modules. Common techniques to detect the Xposed environment include checking for the existence of the XposedBridge.jar file in the system, verifying the installation of the Xposed Installer application, and checking for the presence of the XposedHelpers class.

### Frida
Frida is a dynamic instrumentation tool that allows for hooking into applications using JavaScript scripts. It can be used for monitoring and modifying aspects of an application such as memory, files, and network activity. To detect the presence of a Frida environment, the existence of the fridaserver binary file, the LIBFRIDA library file, and the frida-agent file can be checked. The fridaserver and LIBFRIDA library files are the core components of Frida, while frida-agent is a proxy tool for Frida. The presence of these files indicates that a Frida environment is installed or that the proxy has been started.

## Root Detection (RD)
In the Android system, Root refers to the process of gaining superuser privileges. With Root, users can access all the features and files of the system, and thus can modify system settings, delete pre-installed applications, install unverified applications, and so on.

### Check Installed Packages (CIP)
Check Installed Packages is a root detection method that determines if a device has been rooted by checking if known root tools or files are installed on the device, such as the su binary file, SuperSU or SuperUser app, Magisk, and more. This method utilizes the PackageManager class in Android system to obtain a list of installed applications on the device, and performs comparison and analysis to detect the root status.

### Check Shell Commands Execution (CSCE)
Check Shell Commands Execution is a common Root detection method that detects whether a device has been rooted by executing some Linux commands that require Root privileges. In the Android system, some Linux commands such as "su" and "busybox" can only run after the device has been rooted. Therefore, by attempting to execute these Root-required commands and observing the returned results, it is possible to infer whether the device has been rooted.

### Check Build Tag and System Properties (CBTSP)
The Check Build Tag and System Properties is a Root detection method that determines whether a device has been rooted by examining the device's "Build Tag" and system properties. In the Android system, the "Build Tag" is a string used to identify the firmware version of the device. System properties, on the other hand, are a set of key-value pairs used to store some properties and configuration information of the Android system. These properties and firmware version information may be modified on a rooted device.

### Directory Permissions (DP)
Directory Permissions is a root detection method that determines if a device has been rooted by checking the permissions of certain directories in the Android file system. After a device is rooted, the permissions of certain directories may be changed to allow normal users to read, write, and execute operations on them.


## Term List
|       **Comprehensive Expression**       	| **Abbreviation** 	|
|:----------------------------------------:	|:----------------:	|
|               Anti-Debuggin              	|        AD        	|
|            Using Timing Check            	|        UTC       	|
|               Using Signals              	|        US        	|
|              Using TracerPID             	|        UTP       	|
|            Preempt Ptrace API            	|        PPA       	|
|               Anti-Dumping               	|        ADU       	|
|     Debuggable and Debugger Features     	|        DDF       	|
|       Using Breakpointset Structure      	|        UBS       	|
|         Altering Debugger Memory         	|        ADM       	|
|       Virtual Environment Detection      	|        VED       	|
|            Emulator Detection            	|        ED        	|
|             Device Identifier            	|        DI        	|
|               Current Build              	|        CB        	|
|             Telephony Manager            	|        TM        	|
|           Hardware Composition           	|        HC        	|
|         Emulator Related Strings         	|        ERS       	|
|            Sensor Information            	|        SI        	|
|      Context Switch Based Detection      	|       CSBD       	|
|  Translation Block Cache Based Detection 	|       TBCBD      	|
| Misaligned Vectorization Based Detection 	|       MVBD       	|
|    App-Level Virtualization Detection    	|       ALVD       	|
|                 File Path                	|        FP        	|
|                 Share UID                	|        SU        	|
|              Port Detection              	|        PD        	|
|        Code Injection and Hooking        	|        CIH       	|
|              Anti-Tampering              	|        AT        	|
|            Signature Checking            	|        SC        	|
|          Code Integrity Checking         	|        CIC       	|
|           SafetyNet Attestation          	|        SA        	|
|          Installer Verification          	|        IV        	|
|              Root Detection              	|        RD        	|
|         Check Installed Packages         	|        CIP       	|
|      Check Shell Commands Execution      	|       CSCE       	|
|   Check Build Tag and System Properties  	|       CBTSP      	|
|           Directory Permissions          	|        DP        	|
