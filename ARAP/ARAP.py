from androguard.core.bytecodes.apk import APK
from androguard.core.bytecodes.dvm import DalvikVMFormat
from androguard.core.analysis.analysis import Analysis
from androguard.decompiler.decompiler import DecompilerJADX


from androguard.core.analysis import auto
from androguard.decompiler.decompiler import DecompilerDAD
import sys
import os
import shutil
import generatejson
import datetime
import json
import zipfile
import subprocess
import re
import frida
import time
import signal
import threading

from patternDiscriminant import *
from auxiliaryFunction import *

import csv



'''
在运行此py文件之前，请先运行
Pretreatment.py
'''


javaAPK = 0
skipjava = 0
max_tries = 1  # 最大尝试次数
max_timeouts = 2  # 最大超时次数

def on_message(message, data):
    
    print(message)
    
    try:
        if "payload" in message:
            if "ptracepid" in message["payload"]:
                global isptrace
                isptrace = 1
    except:
        pass
    
    try:
        if "payload" in message:
            if "kill" in message["payload"]:
                #print(type(message["payload"]["kill"]))
                if message["payload"]["kill"] in [2, 5, 15]:
                    global iskill
                    iskill = 1
    except:
        pass

    try:
        if "payload" in message:
            if "raise" in message["payload"]:
                #print(message["payload"]["raise"])
                if message["payload"]["raise"] in [2, 5, 15]:
                    global israise
                    israise = 1
    except:
        pass




packageName =" "
apk_file = " "
OK = 0
Fail = 0
isDebugVersion = 0
isV2 = 0
isV3 = 0
isV4 = 0
isInstallerVerificationC = 0
isptrace = 0
iskill = 0
israise = 0



classes_summary = []
methods_summary = []
attributes_summary = []
JAVA_strings_summary = []
NATIVE_strings_summary = []
NATIVE_symbol_summary = []
strings_summary = []


class AndroTest(auto.DirectoryAndroAnalysis):
    def __init__(self, path):
        super(AndroTest, self).__init__(path)
        self.has_crashed = False
        #self.packageName = " "

    def analysis_app(self, log, a, d, dx):
        # Just print all objects to stdout
        #print(log.id_file, log.filename, apkobj, dexobj, analysisobj)
        
        #想要获取源码，必须手动设置反编译器
        #设置反编译为JADX
        #decompiler = DecompilerJADX(d, dx)
        global javaAPK
        javaAPK = 0
        #设置反编译器为DAD
        decompiler = DecompilerDAD(d, dx)
        d.set_decompiler(decompiler)
        
        global classes_summary
        global methods_summary
        global attributes_summary
        global JAVA_strings_summary
        
        #print(d.CM.decompiler_ob)
        #print(type(d.CM.decompiler_ob))
        #d.set_vmanalysis(dx)
        #print(apkfilepath)  #可以获取到./apk/1/1.apk
        #xml_data = get_manifest(apkfilepath)
        #print("apkfilepath",apkfilepath)
        #print(type(xml_data))
        #print("xml_data",xml_data)
        
        #print("packageName",packageName)
        now = datetime.datetime.now()
        print("The current time is: ", now.strftime("%Y-%m-%d %H:%M:%S"))
        print("Analyzing",packageName)
        print("Start static analysis")
        #print("apk_file",apk_file)
        
        global AntiDebuggingDebuggerRelatedValueAttributesa3
        AntiDebuggingDebuggerRelatedValueAttributesa3 = "L" + packageName.replace(".","/") + "/BuildConfig.DEBUG"
        DebuggerRelatedValueC.append(AntiDebuggingDebuggerRelatedValueAttributesa3)
        
        #获取APK中所有类的类名
        classesObject = dx.get_classes()
        #list中每个对象都是<class 'androguard.core.analysis.analysis.ClassAnalysis'>  972行
        classesObjectList = list(classesObject)
        classesObjectNameList = list()
        #获取类名组成的列表
        for each in classesObjectList:
            classesObjectNameList.append(each.orig_class.get_name())
        #flag = "Landroid/os/Build"
        #print(flag in classesObjectNameList)
        #print(classesObjectNameList[0:5])
        #print(len(classesObjectNameList))
        lock1 = threading.Lock()
        with lock1:
            classes_summary = classes_summary + classesObjectNameList
            classes_summary = list(set(classes_summary))
            #print("classesObject",type(classesObject))
            classesObject = {}
            classesObjectList.clear()
            classesObjectNameList.clear()
            

        #print("classes_summary",len(classes_summary))
        #获取APK内所有字符串
        stringsObject = dx.get_strings()
        #list中每个对象都是<class 'androguard.core.analysis.analysis.StringAnalysis'>
        stringsObjectList = list(stringsObject)
        stringsObjectNameList = list()
        #获取字符串组成的列表
        for each in stringsObjectList:
            stringsObjectNameList.append(each.get_value())  
        #print(stringsObjectNameList[0:5])
        #newLine()
        #print(len(stringsObjectNameList))
        lock2 = threading.Lock()
        with lock2:
            JAVA_strings_summary = JAVA_strings_summary + stringsObjectNameList
            JAVA_strings_summary = list(set(JAVA_strings_summary))
            #print("stringsObject",type(stringsObject))
            stringsObject = {}
            stringsObjectList.clear()
            stringsObjectNameList.clear()
        
        #取APK内所有attributes
        attributesObjectList = dx.get_attributes()
        #print(attributesObjectList[0:5])
        #newLine()
        #print(len(attributesObjectList))
        
        #打开方式是w，因为不是二进制了不能用wb打开方式
        lock3 = threading.Lock()
        with lock3:
            attributes_summary = attributes_summary + attributesObjectList
            attributes_summary = list(set(attributes_summary))
            #print("attributesObjectList",type(attributesObjectList))
            attributesObjectList.clear()
        
        
        #取APK内所有Fullmethods
        aFullmethodsObjectList = dx.get_Fullmethods()
        #print(aFullmethodsObjectList[0:5])
        #newLine()
        #print(len(aFullmethodsObjectList))
        
        #打开方式是w，因为不是二进制了不能用wb打开方式
        lock4 = threading.Lock()
        with lock4:
            methods_summary = methods_summary + aFullmethodsObjectList
            methods_summary = list(set(methods_summary))
            #print("aFullmethodsObjectList",type(aFullmethodsObjectList))
            aFullmethodsObjectList.clear()
            
        
        
        #cg图
        print("Generating CG graph")
        now = datetime.datetime.now()
        print("The current time is: ", now.strftime("%Y-%m-%d %H:%M:%S"))
        try:
            cg = dx.get_call_graph()
            
            #PresenceofOtherAppsC
            getInstalledApplicationsFromSet = set()
            getInstalledApplicationsFromList = list()
            temp = list()
            
            #FilePathB
            getFilesDirFromSet = set()
            getFilesDirFromList = list()
            
            #CodeInjectionAndHookingB
            getStackTraceFromSet = set()
            getStackTraceFromList = list()
            
            #FilePathD
            getPackageNameFromSet = set() 
            getPackageNameFromList = list()
            
            #UsingTimingCheck
            nanoTimeFromSet = set()
            nanoTimeFromList = list()
            
            currentTimeMillisFromSet = set()
            currentTimeMillisFromList = list()
            
            elapsedRealtimeFromSet = set()
            elapsedRealtimeFromList = list()
            
            elapsedRealtimeNanosFromSet = set()
            elapsedRealtimeNanosFromList = list()
            
            #HashValueComparison
            HashValueComparisonFromSet = set()
            HashValueComparisonFromList = list()
            
            #SensorInformation
            SensorInformationFromSet = set()
            SensorInformationFromList = list()
            
            #PresenceofOtherAppsC
            global currentisPresenceofOtherAppsC
            
            global currentisFilePathB
            
            global currentisCodeInjectionAndHookingB
            
            global currentisFilePathD
            
            global currentisUsingTimingCheck
            
            global currentisHashValueComparison
            
            global currentisSensorInformation
            
            
            
            
            To = ""
            Mcode  = ""
            
            for node in cg:
                #print(type(node))  #<class 'androguard.core.analysis.analysis.MethodAnalysis'>
                #print(node.name)   #getResultsFromIntent
                if(node.name == "getInstalledApplications"): #PresenceofOtherAppsC
                    getInstalledApplicationsFromSet = node.get_xref_from()
                    #print(getInstalledApplicationsFromSet)
                    try:
                        temp = [y for (x,y,z) in getInstalledApplicationsFromSet]
                    except Exception as e:
                        print("ERROR",e)
                        
                    #print("111111111111111")
                    getInstalledApplicationsFromList = getInstalledApplicationsFromList +temp
                    #print(type(getInstalledApplicationsFromList[0]))  #class 'androguard.core.analysis.analysis.MethodAnalysis
                
                if(node.name == "getFilesDir"):#FilePathB
                    getFilesDirFromSet = node.get_xref_from()
                    try:
                        temp = [y for (x,y,z) in getFilesDirFromSet]
                    except Exception as e:
                        print("ERROR",e)
                        
                    getFilesDirFromList = getFilesDirFromList + temp

                if(node.name == "getStackTrace"):       #CodeInjectionAndHookingB    
                    getStackTraceFromSet = node.get_xref_from()
                    try:
                        temp = [y for (x,y,z) in getStackTraceFromSet]
                    except Exception as e:
                        print("ERROR",e)
                        
                    getStackTraceFromList = getStackTraceFromList +temp

                if(node.name == "getPackageName"):       #FilePathD
                    getPackageNameFromSet = node.get_xref_from()
                    try:
                        temp = [y for (x,y,z) in getPackageNameFromSet]
                    except Exception as e:
                        print("ERROR",e)
                        
                    #print("44444444444444444444")
                    getPackageNameFromList = getPackageNameFromList +temp
                
                if(node.name == "nanoTime"):  #UsingTimingCheck
                    nanoTimeFromSet = node.get_xref_from()
                    try:
                        temp = [y for (x,y,z) in nanoTimeFromSet]
                    except Exception as e:
                        print("ERROR",e)
                        
                    nanoTimeFromList = nanoTimeFromList +temp
                
                if(node.name == "currentTimeMillis"):
     
                    currentTimeMillisFromSet = node.get_xref_from()
                    #print(nanoTimeFromSet)
                    try:
                        temp = [y for (x,y,z) in currentTimeMillisFromSet]
                    except Exception as e:
                        print("ERROR",e)
                    #print(type(temp))
                    #print(len(temp))
                    currentTimeMillisFromList = currentTimeMillisFromList +temp
            

                if(node.name == "elapsedRealtime"):
     
                    elapsedRealtimeFromSet = node.get_xref_from()
                    #print(nanoTimeFromSet)
                    try:
                        temp = [y for (x,y,z) in elapsedRealtimeFromSet]
                    except Exception as e:
                        print("ERROR",e)
                        
                    #print("777777777777777777")
                    #print(type(temp))
                    #print(len(temp))
                    elapsedRealtimeFromList = elapsedRealtimeFromList +temp
                
                
                if(node.name == "elapsedRealtimeNanos"):
     
                    elapsedRealtimeNanosFromSet = node.get_xref_from()
                    #print(nanoTimeFromSet)
                    try:
                        temp = [y for (x,y,z) in elapsedRealtimeNanosFromSet]
                    except Exception as e:
                        print("ERROR",e)
                        
                    #print("888888888888")
                    #print(type(temp))
                    #print(len(temp))
                    elapsedRealtimeNanosFromList = elapsedRealtimeNanosFromList +temp
                    
                if(node.name == "digest"):
                    HashValueComparisonFromSet = node.get_xref_from()
                    try:
                        temp = [y for (x,y,z) in HashValueComparisonFromSet]
                    except Exception as e:
                        print("ERROR",e)
                    
                    HashValueComparisonFromList  = HashValueComparisonFromList  +temp
                    
                if(node.name == "getDefaultSensor"):
                    SensorInformationFromSet = node.get_xref_from()
                    try:
                        temp = [y for (x,y,z) in SensorInformationFromSet]
                    except Exception as e:
                        print("ERROR",e)
                    
                    SensorInformationFromList  = SensorInformationFromList  +temp
                
            for i in range(len(getInstalledApplicationsFromList)):
                isSgetInstalledApplications = 0
                isSequals = 0
                isSsize = 0
                isQuantityJudgment = 0
                try:
                    To = getInstalledApplicationsFromList[i].get_xref_to()
                    To = [y for (x,y,z) in To]  #'androguard.core.analysis.analysis.MethodAnalysis
                    To = "".join(str(x) for x in To)
                
                    SgetInstalledApplications = "Landroid/content/pm/PackageManager;->getInstalledApplications"
                    Sequals = "Ljava/lang/String;->equals"
                    Ssize = "Ljava/util/List;->size"
                    M = getInstalledApplicationsFromList[i].get_method()
                    Mcode = decompiler.get_source_method(M)
                    #print("99999999999999999")
                
                except Exception as e:
                    print("ERROR",e)
                    continue
                if(otherApp(Mcode)):
                    isQuantityJudgment = 1
                if(SgetInstalledApplications in To):
                    isSgetInstalledApplications = 1
                    
                if(Sequals in To):
                    isSequals = 1
                    
                if(Ssize in To):
                    isSsize = 1
                
                if(isSgetInstalledApplications == 1 and isSsize == 1 and isSequals == 0 and isQuantityJudgment == 1):
                    currentisPresenceofOtherAppsC = 1
                    
                    break
            
            #FilePathB      
            
            
            for i in range(len(getFilesDirFromList)):
                isSgetFilesDir = 0
                isSgetPath = 0
                #print("1212121212121212")
                try:
                    To = getFilesDirFromList[i].get_xref_to()
                    To = [y for (x,y,z) in To]
                    To = "".join(str(x) for x in To)
                except Exception as e:
                    print("ERROR",e)
                    continue
                #print("1212121212121212")
                #print(To)
                SgetFilesDir = "Landroid/content/Context;->getFilesDir"
                SgetPath = "Ljava/io/File;->getPath"
                
                if(SgetFilesDir in To):
                    isSgetFilesDir = 1
                if(SgetPath in To):
                    isSgetPath = 1
                
                if(isSgetFilesDir and isSgetPath):
                    currentisFilePathB = 1
                    break
            
            
            #CodeInjectionAndHookingB
            
         
            for i in range(len(getStackTraceFromList)):
                isSgetStackTrace = 0
                isSgetClassName = 0
                isSgetMethodName = 0
                try:
                    To = getStackTraceFromList[i].get_xref_to()
                    To = [y for (x,y,z) in To]
                    To = "".join(str(x) for x in To)
                except Exception as e:
                    print("ERROR",e)
                    continue
                #print("131313131313131313")
                #print(To)
                SgetStackTrace = "Ljava/lang/Exception;->getStackTrace"
                SgetClassName = "Ljava/lang/StackTraceElement;->getClassName"
                SgetMethodName = "Ljava/lang/StackTraceElement;->getMethodName"
                
                if(SgetStackTrace in To):
                    isSgetStackTrace = 1
                if(SgetClassName in To):
                    isSgetClassName = 1
                if(SgetMethodName in To):
                    isSgetMethodName = 1
                
                if(isSgetStackTrace and isSgetClassName and isSgetMethodName):
                    currentisCodeInjectionAndHookingB = 1
                    break
           
           
            #FilePathD
            
          
            for i in range(len(getPackageNameFromList)):
                isSgetPackageName = 0
                isSgetInstalledPackages = 0
                isSpackageName = 0
                isSequals = 0
                try:
                    
                    To = getPackageNameFromList[i].get_xref_to()
                    
                    To = [y for (x,y,z) in To]
                    
                    To = "".join(str(x) for x in To)
                    
                except Exception as e:
                    print("ERROR",e)
                    continue
                #print(To)
                SgetPackageName = "Landroid/content/Context;->getPackageName"
                SgetInstalledPackages = "Landroid/content/pm/PackageManager;->getInstalledPackages"
                SpackageName = "Landroid/content/pm/PackageInfo;->packageName"
                Sequals ="Ljava/lang/String;->equals"
                 
                if(SgetPackageName in To):
                    isSgetPackageName = 1
                if(SgetInstalledPackages in To):
                    isSgetInstalledPackages = 1
                if(SpackageName in To):
                    isSpackageName = 1     
                if(Sequals in To):
                    isSequals = 1
                
                
                if(isSgetPackageName and isSgetInstalledPackages and isSpackageName and isSequals):
                    currentisFilePathD = 1
                    break
            
            #UsingTimingCheck
            
            
            global B1
            B1 = 0
            
            for i in range(len(nanoTimeFromList)):
                isSdoublenanoTime = 0
                isSif = 0
                isSgreaterthan = 0
                isSminussign = 0
                isSthan_or_equal_to_2 = 0
                try:
                    
                    M = nanoTimeFromList[i].get_method()
                    
                    Mcode = decompiler.get_source_method(M)
                except Exception as e:
                    print("ERROR",e)
                    continue
                #print(type(Mcode))  #str
                target = "System.nanoTime()"

                # Use regular expression to find all occurrences of the target string
                matches = re.findall(target, Mcode)

                # Check if the target string appears exactly two times
                if len(matches) == 2:
                    isSdoublenanoTime = 1
                    
                if("if" in Mcode):
                    isSif = 1
                    
                if(">" in Mcode):
                    isSgreaterthan = 1
                
                if("-" in Mcode):
                    isSminussign = 1
                    
                if(is_only_one_number_greater_than_or_equal_to_2_1(Mcode)):
                    isSthan_or_equal_to_2 = 1
                    
                if(isSdoublenanoTime and isSgreaterthan and isSminussign and isSif and isSthan_or_equal_to_2 and find_num_and_check_100000000(Mcode) and Check_behavior_change(Mcode)):
                    currentisUsingTimingCheck = 1
                    B1 = 1
                    
                    break
                    
            global B2
            B2 = 0
            for i in range(len(currentTimeMillisFromList)):
                isSdoublecurrentTimeMillis = 0
                isSif = 0
                isSgreaterthan = 0
                isSminussign = 0
                isSthan_or_equal_to_2 = 0
                try:
                    
                    M = currentTimeMillisFromList[i].get_method()
                    
                    
                    Mcode = decompiler.get_source_method(M)
                    
                except Exception as e:
                    print("ERROR",e)
                    continue
                #print(type(Mcode))  #str
                target = "System.currentTimeMillis()"

                # Use regular expression to find all occurrences of the target string
                matches = re.findall(target, Mcode)

                # Check if the target string appears exactly two times
                if len(matches) == 2:
                    isSdoublecurrentTimeMillis = 1
                if("if" in Mcode):
                    isSif = 1
                if(">" in Mcode):
                    isSgreaterthan = 1
                
                if("-" in Mcode):
                    isSminussign = 1
                    
                if(is_only_one_number_greater_than_or_equal_to_2_2(Mcode)):
                    isSthan_or_equal_to_2 = 1
                    
                if(isSdoublecurrentTimeMillis and isSgreaterthan and isSminussign and isSif and isSthan_or_equal_to_2 and  find_num_and_check_100(Mcode) and Check_behavior_change(Mcode)):
                    currentisUsingTimingCheck = 1
                    B2 = 1
                    
                    break

            global B3
            B3 = 0
            for i in range(len(elapsedRealtimeFromList)):
                isSdoubleelapsedRealtime = 0
                isSif = 0
                isSgreaterthan = 0
                isSminussign = 0
                isSthan_or_equal_to_2 = 0
                try: 
                    
                    M = elapsedRealtimeFromList[i].get_method()
                    
                    
                    Mcode = decompiler.get_source_method(M)
                    
                except Exception as e:
                    print("ERROR",e)
                    continue
                #print(type(Mcode))  #str
                target = "SystemClock.elapsedRealtime()"

                # Use regular expression to find all occurrences of the target string
                matches = re.findall(target, Mcode)

                # Check if the target string appears exactly two times
                if len(matches) == 2:
                    isSdoubleelapsedRealtime = 1
                if("if" in Mcode):
                    isSif = 1
                if(">" in Mcode):
                    isSgreaterthan = 1
                
                if("-" in Mcode):
                    isSminussign = 1
                
                if(is_only_one_number_greater_than_or_equal_to_2_3(Mcode)):
                    isSthan_or_equal_to_2 = 1
                    
                if(isSdoubleelapsedRealtime and isSgreaterthan and isSminussign and isSif and isSthan_or_equal_to_2 and find_num_and_check_100(Mcode) and Check_behavior_change(Mcode)):
                    currentisUsingTimingCheck = 1
                    
                    B3 = 1
                    break
            

            for i in range(len(elapsedRealtimeNanosFromList)):
                isSdoubleelapsedRealtimeNanos = 0
                isSif = 0
                isSgreaterthan = 0
                isSminussign = 0
                isSthan_or_equal_to_2 = 0
                try:
                    
                    M = elapsedRealtimeNanosFromList[i].get_method()
                    
                    
                    Mcode = decompiler.get_source_method(M)
                    
                except Exception as e:
                    print("ERROR",e)
                    continue
                #print(type(Mcode))  #str
                target = "SystemClock.elapsedRealtimeNanos()"

                # Use regular expression to find all occurrences of the target string
                matches = re.findall(target, Mcode)

                # Check if the target string appears exactly two times
                if len(matches) == 2:
                    isSdoubleelapsedRealtimeNanos = 1
                if("if" in Mcode):
                    isSif = 1
                if(">" in Mcode):
                    isSgreaterthan = 1
                
                if("-" in Mcode):
                    isSminussign = 1
                
                if(is_only_one_number_greater_than_or_equal_to_2_4(Mcode)):
                    isSthan_or_equal_to_2 = 1
                    
                if(isSdoubleelapsedRealtimeNanos and isSgreaterthan and isSminussign and isSif and isSthan_or_equal_to_2 and find_num_and_check_100000000(Mcode) and Check_behavior_change(Mcode)):
                    currentisUsingTimingCheck = 1
                    break
            
            for i in range(len(HashValueComparisonFromList)):
                isSdigest = 0
                isSgetResourceAsStream = 0
                isSgetDeclaredMethod = 0
                
                try:
                    M = HashValueComparisonFromList[i].get_method()                   
                    Mcode = decompiler.get_source_method(M)
                except Exception as e:
                    print("ERROR",e)
                    continue
                '''
                Sdigest = "MessageDigest.digest"
                SgetResourceAsStream = "Class.getResourceAsStream"
                SgetDeclaredMethod = "Class.getDeclaredMethod"
                '''
                Sdigest = "digest"
                SgetResourceAsStream = "getResourceAsStream"
                SgetDeclaredMethod = "getDeclaredMethod"
                
                if(Sdigest in Mcode):
                    isSdigest = 1
                if(SgetResourceAsStream in Mcode):
                    isSgetResourceAsStream = 1
                if(SgetDeclaredMethod in Mcode):
                    isSgetDeclaredMethod = 1
                #Check_behavior_change(Mcode)  是否加入这个？
                if(isSdigest and (isSgetResourceAsStream or isSgetDeclaredMethod)):
                    currentisHashValueComparison = 1
            '''
            for i in range(len(SensorInformationFromList)):
                isSgetDefaultSensor = 0
                isSregisterListener = 0
                
                try:
                    M = SensorInformationFromList[i].get_method()                   
                    Mcode = decompiler.get_source_method(M)
                    print("****************")
                    print(Mcode)
                    print("****************")
                except Exception as e:
                    print("ERROR",e)
                    continue
                
                SgetDefaultSensor = "SensorManager.getDefaultSensor"
                SregisterListener = "SensorManager.registerListener"
                
                if(SgetDefaultSensor in Mcode):
                    isSgetDefaultSensor = 1
                if(SregisterListener in Mcode):
                    isSregisterListener = 1

                
                if(isSgetDefaultSensor and (not isSregisterListener)):
                    currentisSensorInformation = 1
            '''
            
            #清空内存
            getInstalledApplicationsFromSet.clear()
            getInstalledApplicationsFromList.clear()
            temp.clear()
            
            #FilePathB
            getFilesDirFromSet.clear()
            getFilesDirFromList.clear()
            
            #CodeInjectionAndHookingB
            getStackTraceFromSet.clear()
            getStackTraceFromList.clear()
            
            #FilePathD
            getPackageNameFromSet.clear() 
            getPackageNameFromList.clear()
            
            #UsingTimingCheck
            nanoTimeFromSet.clear()
            nanoTimeFromList.clear()
            
            currentTimeMillisFromSet.clear()
            currentTimeMillisFromList.clear()
            
            elapsedRealtimeFromSet.clear()
            elapsedRealtimeFromList.clear()
            
            elapsedRealtimeNanosFromSet.clear()
            elapsedRealtimeNanosFromList.clear()
            
            
        except Exception as e:
            print("INFO：Some problems were encountered when generating CG graph..", e)
                
    def finish(self, log):
       # This method can be used to save information in `log`
       # finish is called regardless of a crash, so maybe store the
       # information somewhere
        if self.has_crashed:
            #print("Analysis of {} has finished with Errors".format(log))
            print("An error occurred while parsing ",packageName," in JAVA layer！ This APK will be skipped")
            global Fail
            Fail = 1
            
        else:
            #print("Analysis of {} has finished!".format(log))
            print("Analysis of ",packageName," has been completed at the JAVA layer")
            
            

    def crash(self, log, why):
        # If some error happens during the analysis, this method will be
        # called
        self.has_crashed = True
        print("Error during analysis of {}: {}".format(log, why), file=sys.stderr)

settings = {
    # The directory `some/directory` should contain some APK files
    "my": AndroTest('apks'),
    # Use the default Logger
    "log": auto.DefaultAndroLog,
    # Use maximum of 1 threads
    "max_fetcher": 1,
}

# 定义递归函数，用于遍历目录
def traverse_dir(dir_path):
    for item in os.listdir(dir_path):
        item_path = os.path.join(dir_path, item)
        if os.path.isdir(item_path):  # 如果是目录，则递归遍历
            traverse_dir(item_path)
        elif item.endswith(".so"):  # 如果是.so文件，则输出其路径
            
            InmCommand = "nm -D "
            IstringsCommand = "strings "
            
            fullSOFilePath = item_path
            try:
                isso = is_so_file(fullSOFilePath)
            except:
                isso = False
            '''
            if(not check_file_size(fullSOFilePath)): #大于10MB就不分析了
                smallso = True
            else:
                smallso = False
            '''
            
            smallso = True
            if(isso and smallso):
            
                nmCommand = InmCommand + fullSOFilePath 
                try:
                    #print(item_path)

                    global NATIVE_strings_summary
                    
                    global NATIVE_symbol_summary
                    
                    global NOP90
                    global isTranslationBlockCacheBasedDetectionA
                    global isTranslationBlockCacheBasedDetectionB
                    global isMisalignedVectorizationBasedDetectionB
                    global UpdatestoExecutionStateBits
                    global isIncompleteSanitizationforUndefinedInstructionsB

                                        
                    nmCommand = ["nm", "-D", fullSOFilePath]
                    #nmCommand = subprocess.check_output(['nm', '-D', fullSOFilePath])

                    #nmCommand = ["nm", "-g", "-P", "--defined-only", "--format=posix", fullSOFilePath]

                    # 创建子进程
                    p = subprocess.Popen(nmCommand, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)

                    # 读取子进程的输出
                    try:
                        # 设置超时时间为600秒
                        stdout, stderr = p.communicate(timeout=600)
                        p.wait()
                    except subprocess.TimeoutExpired:
                        # 超时后强制结束子进程
                        p.kill()
                        stdout, stderr = p.communicate()

                    # 处理子进程的输出
                    for line in stdout.splitlines():
                        cols = line.split()
                        if len(cols) >= 3:
                            sym = cols[2]
                            NATIVE_symbol_summary.append(sym)
                            if(sym == "inotify_add_watch"):
                                print("inotify_add_watch!!!",fullSOFilePath)
                    # 关闭子进程
                    p.kill()
                    #print("Successfully executed nm command")
                    NATIVE_symbol_summary = list(set(NATIVE_symbol_summary))
                except OSError as e:
                    if e.errno == 12:
                        print("ERROR",e)
                        sys.exit(1)
                except Exception as e:
                    print("Some problems were encountered when executing the nm command",e)
                    
                        
                
                try:
                    #stringsCommand = IstringsCommand + fullSOFilePath+ " | tee -a ./temp/NATIVE_strings.txt"
                    # 执行命令并获取输出
                    stringsCommand = ["strings", fullSOFilePath]
                    # 创建子进程
                    p = subprocess.Popen(stringsCommand, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)

                    # 读取子进程的输出
                    try:
                        # 设置超时时间为600秒
                        stdout, stderr = p.communicate(timeout=600)
                        p.wait()
                    except subprocess.TimeoutExpired:
                        # 超时后强制结束子进程
                        p.kill()
                        stdout, stderr = p.communicate()

                    # 处理子进程的输出
                    output_lines = stdout.splitlines()
                    NATIVE_strings_summary = list(set(NATIVE_strings_summary + output_lines))
                    #print("Successfully executed strings command")
                    # 关闭子进程
                    p.kill()
                    
                    '''
                    #s = os.system(stringsCommand)
                    s = os.popen(stringsCommand)
                    context = s.read()
                    if not os.path.exists("./temp/NATIVE_strings.txt"):    
                        os.mknod("./temp/NATIVE_strings.txt")
                    f = open("./temp/NATIVE_strings.txt","a")
                    f.write(context)
                    f.close()
                    s.close()
                    '''
                    #isTranslationBlockCacheBasedDetectionA = 1
                except OSError as e:
                    if e.errno == 12:
                        print("ERROR",e)
                        sys.exit(1)
                
                except Exception as e:
                    print("Some problems were encountered while executing the strings command",e)
                
                try:
                    now = datetime.datetime.now()
                    #print("The current time is: ", now.strftime("%Y-%m-%d %H:%M:%S"))
                    binary_data = b""
                    
                    with open(fullSOFilePath, "rb") as binary_file:
                        binary_data = binary_file.read()
                        #hex_data = " ".join("{:02x}".format(c) for c in binary_data1)
                        #binary_data = " ".join("{:02x}".format(c) for c in binary_data1)
                    #del binary_data1
                    #print("Successfully read binary form")
                    #直接在这里做判断
                    
                    if(has_consecutive_90(binary_data)):
                        NOP90 = 1
                    
                    #print("binary_data",type(binary_data))
                    if(TranslationBlockCacheBasedDetectionHexcode in binary_data):
                        isTranslationBlockCacheBasedDetectionA = 1
                    
                    
                    #if(TranslationBlockCacheBasedDetectionHexcode2 in binary_data and TranslationBlockCacheBasedDetectionHexcode3 in binary_data and TranslationBlockCacheBasedDetectionHexcode4 in binary_data and TranslationBlockCacheBasedDetectionHexcode5 in binary_data):
                    #    isTranslationBlockCacheBasedDetectionB = 1
                    
                    if(TranslationBlockCacheBasedDetectionHexcode2 in binary_data and TranslationBlockCacheBasedDetectionHexcode3 in binary_data):
                        isTranslationBlockCacheBasedDetectionB = 1
                    
                    
                    if(TranslationBlockCacheBasedDetectionHexcode4 in binary_data and TranslationBlockCacheBasedDetectionHexcode5 in binary_data):
                        isTranslationBlockCacheBasedDetectionB = 1
                    
                    if((TranslationBlockCacheBasedDetectionHexcode6 in binary_data) and (TranslationBlockCacheBasedDetectionHexcode7 in binary_data)):
                        isTranslationBlockCacheBasedDetectionB = 1
                    
                    
                    if(MisalignedVectorizationBasedDetectionHexcode1 in binary_data):
                        isMisalignedVectorizationBasedDetectionB = 1
                        #print("fullSOFilePath1",fullSOFilePath)
                       
                    if(MisalignedVectorizationBasedDetectionHexcode2 in binary_data):
                        isMisalignedVectorizationBasedDetectionB = 1
                        #print("fullSOFilePath2",fullSOFilePath)
                        
                    if(MisalignedVectorizationBasedDetectionHexcode3 in binary_data):
                        isMisalignedVectorizationBasedDetectionB = 1
                        #print("fullSOFilePath3",fullSOFilePath)
                        
                    if(MisalignedVectorizationBasedDetectionHexcode4 in binary_data):
                        isMisalignedVectorizationBasedDetectionB = 1
                        #print("fullSOFilePath4",fullSOFilePath)
                    
                    if(MisalignedVectorizationBasedDetectionHexcode5 in binary_data):
                        isMisalignedVectorizationBasedDetectionB = 1
                        #print("fullSOFilePath5",fullSOFilePath)
                    
                    if(MisalignedVectorizationBasedDetectionHexcode6 in binary_data):
                        isMisalignedVectorizationBasedDetectionB = 1
                        #print("fullSOFilePath6",fullSOFilePath)
                        
                    if(MisalignedVectorizationBasedDetectionHexcode7 in binary_data):
                        isMisalignedVectorizationBasedDetectionB = 1
                        #print("fullSOFilePath7",fullSOFilePath)
                        
                    if(MisalignedVectorizationBasedDetectionHexcode8 in binary_data):
                        isMisalignedVectorizationBasedDetectionB = 1
                        #print("fullSOFilePath8",fullSOFilePath)
                    '''
                    if( ((UpdatestoExecutionStateBitsHexcode1 in binary_data) and (UpdatestoExecutionStateBitsHexcode2 in binary_data)) or ((UpdatestoExecutionStateBitsHexcode3 in binary_data) and (UpdatestoExecutionStateBitsHexcode4 in binary_data)) or ((UpdatestoExecutionStateBitsHexcode5 in binary_data) and (UpdatestoExecutionStateBitsHexcode6 in binary_data))):
                        UpdatestoExecutionStateBits = 1
                    if((UpdatestoExecutionStateBitsHexcode7 in binary_data) and (UpdatestoExecutionStateBitsHexcode8 in binary_data)):
                        UpdatestoExecutionStateBits = 1
                        
                    if((UpdatestoExecutionStateBitsHexcode9 in binary_data) and (UpdatestoExecutionStateBitsHexcode10 in binary_data)):
                        UpdatestoExecutionStateBits = 1
                    '''
                    isUpdatestoExecutionStateBitsHexcodeA = 0
                    isUpdatestoExecutionStateBitsHexcodeB = 0
                    
                    for i in range(len(UpdatestoExecutionStateBitsHexcodeA)):
                        if(UpdatestoExecutionStateBitsHexcodeA[i] in binary_data):
                            isUpdatestoExecutionStateBitsHexcodeA = 1
                            print("UpdatestoExecutionStateBitsHexcodeA",UpdatestoExecutionStateBitsHexcodeA[i])
                            break
                    
                    for i in range(len(UpdatestoExecutionStateBitsHexcodeB)):
                        if(UpdatestoExecutionStateBitsHexcodeB[i] in binary_data):
                            isUpdatestoExecutionStateBitsHexcodeB = 1
                            print("UpdatestoExecutionStateBitsHexcodeB",UpdatestoExecutionStateBitsHexcodeB[i])
                            break    
                    
                    if(isUpdatestoExecutionStateBitsHexcodeA and isUpdatestoExecutionStateBitsHexcodeB):
                        print("fullSOFilePath",fullSOFilePath)
                        UpdatestoExecutionStateBits = 1
                        
                    if(IncompleteSanitizationforUndefinedInstructionsHexcode1 in binary_data and IncompleteSanitizationforUndefinedInstructionsHexcode2 in binary_data):
                        isIncompleteSanitizationforUndefinedInstructionsB = 1
                    
                    
                    del binary_data
                
                
                except OSError as e:
                    if e.errno == 12:
                        print("ERROR",e)
                        sys.exit(1)
                except Exception as e:
                    print("Generate binary_ Data encountered some problems",e)
                    continue
            else:
                pass
    
            

#从这里开始程序
currentTime = get_current_time_as_string()

#清空output文件夹，用于存放json
try:
    if os.path.exists("./output" + currentTime):
        shutil.rmtree("./output"+ currentTime)
        os.mkdir("./output" + currentTime)
        os.mkdir("./output" + currentTime+ "/simple")
        os.mkdir("./output" + currentTime+ "/detailed")
        
        
    else:
        os.mkdir("./output"+ currentTime)
        os.mkdir("./output" + currentTime+ "/simple")
        os.mkdir("./output" + currentTime+ "/detailed")
except Exception as e:
    print("Failed to empty output folder, please check permissions",e)
    exit()
#生成总览json文件
generatejson.GenerateSimpleJsonByTemplate("./output" + currentTime + "/","summary")
generatejson.GenerateDetailedJsonByTemplate("./output" + currentTime + "/","summary")

# 打开一个CSV文件
with open("./output" + currentTime + "/HashDict.csv", 'w', newline='') as file:
    writer = csv.writer(file)

    # 写入标题行
    writer.writerow(['PackageName', 'SHA256'])
    


with open("./output" + currentTime + "/FailHashDict.csv", 'w', newline='') as file:
    writer = csv.writer(file)

    # 写入标题行
    writer.writerow(['PackageName', 'SHA256'])
    

starttime = datetime.datetime.now()
apkspath = './apks'
folder_name = list()
sha256 = ""

for name in os.listdir(apkspath):  #这里需要拼接成全路径
    fullPathName = os.path.join(apkspath,name)
    folder_name.append(fullPathName)

folder_name = sorted(folder_name)

for i in range(len(folder_name)):
    try:
        test = i
        print("——————————Total ",len(folder_name)," apks, analyzing ",i+1,"th——————————")
        
        NOP90 = 0
        isTranslationBlockCacheBasedDetectionA = 0
        isTranslationBlockCacheBasedDetectionB = 0
        isMisalignedVectorizationBasedDetectionB = 0
        UpdatestoExecutionStateBits = 0
        isIncompleteSanitizationforUndefinedInstructionsB =0
        currentisPresenceofOtherAppsC = 0
        currentisFilePathB = 0
        currentisCodeInjectionAndHookingB = 0
        currentisFilePathD = 0
        currentisUsingTimingCheck = 0
        currentisHashValueComparison = 0
        currentisSensorInformation = 0
        
        now = datetime.datetime.now()
        print("The current time is: ", now.strftime("%Y-%m-%d %H:%M:%S"))
        CGAPK = folder_name[i]
        apkdirectoryPath = folder_name[i]
        
        
        # 遍历目录中的所有文件
        for filename in os.listdir(apkdirectoryPath):
            # 如果文件名以.apk结尾，拼接目录路径并输出
            if filename.endswith(".apk"):
                global apkfilepath
                apkfilepath = os.path.join(apkdirectoryPath, filename)
                break  # 找到第一个符合条件的文件后退出循环
        
        
        #计算Hash
        
        sha256 = calculate_sha256(apkfilepath)
        
        if(sha256.lower()  != get_filename_without_extension(apkfilepath).lower() ):
            packageName = " "
            
            print("Calculate sha256: ",sha256.lower())
            print("Original sha256: ",get_filename_without_extension(apkfilepath).lower())
            print(type(sha256))
            print(type(get_filename_without_extension(apkfilepath)))
            sha256 = get_filename_without_extension(apkfilepath)
            with open("./output" + currentTime + "/FailHashDict.csv", 'a', newline='') as file:
                writer = csv.writer(file)
                writer.writerow([packageName, sha256])
            
            print("This apk seems to be damaged")
            continue
        
    
#print(apkfilepath)  #./apks/1/app-release.apk
        print("INFO: Setting analysis directory")
        
        
        
        isDebugVersion = 0
        isV2 = 0
        isV3 = 0
        isV4 = 0
        isInstallerVerificationC = 0
        
        #判断apk是否为Debug版本
        try:
            print(apkfilepath)
            a = APK(apkfilepath)
            #获取apk的包名
            packageName = a.get_package()
            
        except Exception as e:
            print("This does not seem to be an APK file..", e)
            packageName = " "
            sha256 = get_filename_without_extension(apkfilepath)
            with open("./output" + currentTime + "/FailHashDict.csv", 'a', newline='') as file:
                writer = csv.writer(file)
                writer.writerow([packageName, sha256])
            continue
        #global isDebugVersion
        
        try:
            xml = a.get_android_manifest_axml().get_xml()
            xml_data = xml.decode('utf-8')
            if ("android:debuggable=\"true\"" in xml_data):
                isDebugVersion = 1
            
            #global isInstallerVerificationC
            if ("android:verifier=\"com.android.vending.security.Verifier\"" in xml_data):
                isInstallerVerificationC = 1
            
            if ("android:value=\"com.android.vending.security.Verifier\"" in xml_data):
                isInstallerVerificationC = 1

            if ("android:name=\"com.android.vending.derived.apk.id\"" in xml_data):
                isInstallerVerificationC = 1
        except Exception as e:
            print("Some problems were encountered when parsing the manifest file", e)
        
        #global isV2
        #global isV3
        try:
            v2 = a.get_certificates_v2()
            v3 = a.get_certificates_v3()
            
            #print(v2)
            #print(v3)
            
            if(v2):
                isV2 = 1
                #print("isV2!")
                
            if(v3):
                isV3 = 1
                #print("isV3!")
            v4 = has_valid_signature_v2_v3_v4(apkfilepath)
            print("Signature obtained successfully")
            
            if(v4):
                isV4 = 1
        except Exception as e:
            print("We encountered some problems while getting signatures", e)
        #global packageName
        
        
        

        
        
        #folder_name[i]是./apks/1 这样的目录  dex smali finalDex + .apk
        #设置这样的目录结构./apks/1下有   
        #1.  1.apk文件用于动态分析  
        #2. dex目录用于存放所有的.dex文件  然后依次将.dex文件转换为smali文件(baksmali) 删除第三方库  smali文件放入smali 目录下
        #(java -jar .\baksmali-2.5.2.jar d out.dex -o smali)
        #3.把所有smali文件提取到根目录下
        #4.smali.jar 将所有smali文件变为一个/多个dex文件 放入finalDex目录下
        #6. 若多个dex 则使用d8合并 放入outDex
        #5.把这个finalDex目录传给Androguard  settings["my"] = AndroTest(finalDex)
        #判断这个apk文件的大小,若大于10MB，则返回True，进行化简操作。
        '''
        try:
            signal.signal(signal.SIGALRM, timeout_handler)
            signal.alarm(1800)  #30分钟
            try:
                if(True):  #check_file_size(apkfilepath)
                    #大apk，化简
                    simplified_start_time = time.time()
                    now = datetime.datetime.now()
                    print("The current time is: ", now.strftime("%Y-%m-%d %H:%M:%S"))
                    print("Try to simplify APK with large volume")
                    print("INFO: Extract DEX")
                    extract_dex_files(apkfilepath)
                    print("INFO: Generate smali file")
                    generate_smali_files(apkfilepath,baksmali_jar_path,List_Need_Removed)
                    print("INFO: Reorganize DEX")
                    smali_bak_dex(apkfilepath,smali_jar_path)
                    
                    simplified_end_time = time.time()
                    simplified_duration = simplified_end_time - simplified_start_time
                    
                    if(check_single_file(apkfilepath)):
                        #单dex  目录是finalDex
                        finalDexpath = generate_finalDex(apkfilepath)
                        settings["my"] = AndroTest(finalDexpath)
                        #print(finalDexpath)
                        simplified_end_time = time.time()
                        simplified_duration = simplified_end_time - simplified_start_time
                        print(f"Simplify execution time to {simplified_duration} seconds")
                        
                    else:
                        #多dex 目录是outDex
                        finalDexpath = generate_finalDex(apkfilepath)
                        settings["my"] = AndroTest(finalDexpath)
                        #print(finalDexpath)
                        simplified_end_time = time.time()
                        simplified_duration = simplified_end_time - simplified_start_time
                        print(f"Simplify execution time to {simplified_duration} seconds")
                    
                else:
                    #小apk，正常处理
                    settings["my"] = AndroTest(folder_name[i])  #分析第i个文件夹
            except TimeoutException:
                settings["my"] = AndroTest(folder_name[i])
        except:
            print("Simplification failed, normal execution")
            settings["my"] = AndroTest(folder_name[i])
        
        '''
        try:
            print("INFO: Extract DEX")
            extract_dex_files(apkfilepath)
            dexpath = generate_dex(apkfilepath)
            settings["my"] = AndroTest(dexpath)
        except:
            settings["my"] = AndroTest(folder_name[i])
        
        #settings["my"] = AndroTest(folder_name[i])    
        aa = auto.AndroAuto(settings)
        #print(settings["my"])
        JAVAOK = 0
        #创建temp文件夹用于apk分析
        #if os.path.exists("./temp"):
        #    shutil.rmtree("./temp")
        #os.mkdir("./temp")
        Fail = 0
        #在这里对整个apk进行定时限制，超过
        signal.signal(signal.SIGALRM, timeout_handler)
        print("Set the upper limit of static analysis time")
        signal.alarm(1800)  #30分钟
        print("Prepare to start analysis")
        try:
            start_time = time.time()
            print("apkfilepath",apkfilepath)
            javaAPK = 1
            aa.go()
            
            skipjava +=  javaAPK
            
            end_time = time.time()
            duration = end_time - start_time # 计算执行时长
            print("Static analysis code execution time is %.6f" % duration," seconds") # 输出执行时长，保留6位小数
            
        except TimeoutException:
            # 超时处理代码
            Fail = 1
            print("Analysis timeout, will skip the analysis of this Java layer")
        signal.alarm(0)  # 取消定时器
        now = datetime.datetime.now()
        print("The current time is: ", now.strftime("%Y-%m-%d %H:%M:%S"))
        
        #if(Fail == 1):
            #分析结束，删除temp
        #    shutil.rmtree("./temp")
        #    continue
        #try:    
        #aa.go()完成对JAVA层的分析，接下来，完成对native层的分析，具体是应用nm和strings命令
        
        #先将APK中的so文件提取到当前目录下
        # 遍历当前目录下的所有APK文件
        #print(folder_name[i])
        apk_dir = folder_name[i]
        print("Prepare to extract so file")
        for file_name in os.listdir(apk_dir):
            if file_name.endswith('.apk'):
                apk_path = os.path.join(apk_dir, file_name)  # APK文件路径
                with zipfile.ZipFile(apk_path, 'r') as apk_file:
                    # 提取APK文件中的所有SO文件
                    for zip_info in apk_file.infolist():
                        if zip_info.filename.endswith('.so'):
                            try:
                                apk_file.extract(zip_info.filename, apk_dir)

                                os.chmod(apk_dir+'/'+zip_info.filename, 0o777)  # 修改文件权限
                                print(f'{zip_info.filename} Extraction succeeded')
                            except:
                                pass
        
        #创建symbol.txt和NATIVE_strings.txt    
        #os.mknod("./temp/NATIVE_symbol.txt")  
        #os.mknod("./temp/NATIVE_strings.txt")
        #os.mknod("./temp/NATIVE_hex_data.txt")
        
        traverse_dir(folder_name[i])
        print("Complete the analysis of NATIVE layer！")
        delete_other_files(apkfilepath)
        
        tries = 0
        timeouts = 0
        print("apkfilepath",apkfilepath)
        #动态分析
        isptrace = 0
        iskill = 0
        israise = 0
        
        while tries < max_tries:
            
            print("before set time")
            signal.signal(signal.SIGALRM, timeout_handler)
            
            signal.alarm(180)  # 设置超时时间为3分钟
            print("set time is OK")
            
            try:
                # 在这里执行需要尝试的代码
                #为动态分析作准备
                try:
                    #print("before start_hluda_server")
                    #start_hluda_server()
                    #print("after start_hluda_server")
                    #time.sleep(1)
                    #print("before forward_port")
                    #forward_port()
                    #print("after forward_port")
                    #time.sleep(1)
                    #print("packageName",packageName)
                    #print("apkfilePath",apkfilePath)
                    print("start install")
                    install_apk(packageName,apkfilepath)   
                    time.sleep(1)
                    print("install finsh")
                except Exception as e:
                    print("ERROR: A problem was encountered while analyzing dynamically ",e)
                print("start 6 loops")
                for i in range(6):
                    
                    apk_manifest = get_manifest(apkfilepath)  #用aapt解析manifest文件
                    main_activity = get_main_activity(apk_manifest)  #获取主活动名
                    
                    start_app(packageName,main_activity) #利用包名和主活动名启动APP
                    time.sleep(5)
                    target_pid = get_target_pid(packageName)
                    if(target_pid):          #若能获取到PID
                        tar_out = check_log(target_pid)
                        if "Attempt to close using raise" in tar_out:
                            israise = 1
                        if "ptrace is called with pid=0" in tar_out:
                            isptrace = 1
                        if "Attempt to close using kill" in tar_out:
                            iskill = 1
                    
                    # 判断是否调用了 ptrace
                    if (isptrace and iskill and israise):
                        break
                    print("stop app")
                    stop_app(packageName)
                    time.sleep(1)
                    
                print("Dynamic analysis completed！")
                break  # 如果执行成功，则跳出循环
                
            except TimeoutException:
                timeouts += 1
                print("timeouts is",timeouts)
                if timeouts >= max_timeouts:
                    print("Too many times of timeout")
                    break  # 如果超时次数达到最大值，则跳出循环
                else:
                    print("Dynamic analysis timeout, will try to analyze again")
                    continue  # 继续尝试
            
            except Exception as e:
                print("ERROR: A problem was encountered while analyzing dynamically ",e)
                # 处理其他异常情况
                # ...
                tries += 1
                continue  # 继续尝试    
        if(tries == max_tries):
            print("There is a problem with dynamic analysis, which will be skipped")
        signal.alarm(0)  # 取消定时器
        try:  
            uninstall_apk(packageName)
        except:
            pass
        time.sleep(1) 
        now = datetime.datetime.now()
        print("The current time is: ", now.strftime("%Y-%m-%d %H:%M:%S"))
        
        #print("Anti-Debugging part")                    
        #Anti-Analysis mark
        #Anti-Debugging part
        AntiDebugging = 0
        HashValueComparison = 0
        UsingTimingCheck = 0
        UsingSignals = 0
        UsingTracerPID = 0
        PreemptPtraceAPI = 0
        BreakpointInstructionDetection = 0
        AntiDump = 0
        DebuggerRelatedValue = 0
        DebuggerRelatedValueOLD = 0
        #DebuggerRelatedValueNEW = 0
        NumberofBreakpoints = 0
        BreakpointsetStructure = 0
        ModifyJdwpStateJdwpTransport = 0
        AlteringDebuggerMemory = 0
        AlteringDebuggerMemoryOLD = 0
        
        #Anti Virtual Environment part
        
        AntiVirtualEnvironment = 0
        AntiEmulator = 0
        AntiAppLevelVirtualization = 0
        DeviceIdentifier = 0
        DeviceIdentifierOLD = 0
        CurrentBuild = 0
        CurrentBuildOLD = 0
        TelephonyManager = 0
        HardwareComponents = 0
        EmulatorRelatedStringsAndSystemProperties = 0
        EmulatorRelatedStringsAndSystemPropertiesOLD = 0
        #EmulatorRelatedStringsAndSystemPropertiesNEW = 0
        SensorInformation = 0
        ContextSwitchBasedDetection = 0
        TranslationBlockCacheBasedDetection = 0
        MisalignedVectorizationBasedDetection = 0
        #UpdatestoExecutionStateBits = 0
        IncompleteSanitizationforUndefinedInstructions = 0
        GraphicalPerformance = 0
        PresenceofOtherApps =  0
        
        FilePath = 0
        ShareUID = 0
        PortDetection = 0
        CodeInjectionAndHooking = 0
        
        #Anti-Tampering part
        AntiTampering = 0
        SafetyNetAttestation = 0
        SafetyNetAttestationOLD = 0
        #SafetyNetAttestationNEW = 0
        InstallerVerification = 0
        InstallerVerificationOLD = 0
        #InstallerVerificationNEW = 0
        CodeIntegrityChecking = 0
        CodeIntegrityCheckingOLD = 0
        #CodeIntegrityCheckingNEW = 0
        SignatureChecking = 0
        SignatureCheckingOLD = 0
        #SignatureCheckingNEW = 0
        
        #Anti-Hooking part
        AntiHooking = 0
        Xposed = 0
        XposedOLD = 0
        #XposedNEW = 0
        Frida = 0
        FridaOLD = 0
        #FridaNEW = 0
        
        #Root Detection part
        RootDetection = 0
        CheckInstalledPackages = 0
        CheckProcessesServices = 0
        CheckShellCommandsExecution = 0
        CheckBuildTagandSystemProperties = 0
        DirectoryPermissions = 0
        
        
        DebugSub = 0
        EnvironmentSub = 0
        TamperSub = 0
        HookSub = 0
        RootSub = 0
        SumSub = 0
        SumMajor = 0
        
        #print("classes_summary = [each.lower() for each in classes_summary]")
        #try:
        #类型转换
        #print("classes_summary",len(classes_summary))
        classes_summary_temp = []
        #print("classes_summary",len(classes_summary))
        for byte in classes_summary:
            try:
                # 尝试将字节转换为字符串
                classes_summary_temp.append(byte.decode())
            except Exception as e:
                # 如果出现异常，则说明该元素无法转换为字符串，忽略它
                #print("classes_ summary_ Some elements in temp cannot be converted",e)
                #print("classes_ summary_temp Some elements in temp cannot be converted",e)
                pass
        
        classes_summary = classes_summary_temp
        #print("classes_summary",len(classes_summary))
        #print("classes_summary",len(classes_summary))
        
        
        
        #print("JAVA_strings_summary",len(JAVA_strings_summary))
        JAVA_strings_summary_temp = []
        for byte in JAVA_strings_summary:
            try:
                # 尝试将字节转换为字符串
                JAVA_strings_summary_temp.append(byte.decode())
            except Exception as e:
                # 如果出现异常，则说明该元素无法转换为字符串，忽略它
                #print("JAVA_strings_summary_temp")
                #print("JAVA_strings_summary_temp Some elements in temp cannot be converted",e)
                pass
        
        JAVA_strings_summary = JAVA_strings_summary_temp
        
        #print("JAVA_strings_summary",len(JAVA_strings_summary))
        
        
        classes_summary = [each.lower() for each in classes_summary]
        #classes_summary = [each.decode() for each in classes_summary]
        methods_summary = [each.lower() for each in methods_summary]
        attributes_summary = [each.lower() for each in attributes_summary]
        JAVA_strings_summary = [each.lower() for each in JAVA_strings_summary]
        #JAVA_strings_summary = [each.decode("utf-8") for each in JAVA_strings_summary]
        NATIVE_strings_summary = [each.lower() for each in NATIVE_strings_summary]
        NATIVE_symbol_summary = [each.lower() for each in NATIVE_symbol_summary]
        
        strings_summary = JAVA_strings_summary + NATIVE_strings_summary + NATIVE_symbol_summary + attributes_summary
        if("inotify_add_watch" in NATIVE_symbol_summary):
            print("inotify_add_watch!!",sha256)
        #类型检查
        '''
        unique_types = set(type(elem) for elem in strings_summary)

        # 如果 unique_types 长度为 1，表示列表中所有元素的类型相同
        if len(unique_types) == 1:
            print('strings_summary所有元素的类型相同')
        else:
            print('strings_summary不同类型的元素存在')
        print("strings_summary",type(strings_summary[0])) 
        print("strings_summary",strings_summary[0])
        
        unique_types = set(type(elem) for elem in classes_summary)

        # 如果 unique_types 长度为 1，表示列表中所有元素的类型相同
        if len(unique_types) == 1:
            print('classes_summary所有元素的类型相同')
        else:
            print('classes_summary不同类型的元素存在')
        print("classes_summary",len(classes_summary))
        print("classes_summary",type(classes_summary[0]))    
        print("classes_summary",classes_summary[0])    
        
        unique_types = set(type(elem) for elem in methods_summary)

        # 如果 unique_types 长度为 1，表示列表中所有元素的类型相同
        if len(unique_types) == 1:
            print('methods_summary所有元素的类型相同')
        else:
            print('methods_summary不同类型的元素存在')
        print("methods_summary",type(methods_summary[0]))      
        print("methods_summary",methods_summary[0])  
        
        
        unique_types = set(type(elem) for elem in attributes_summary)

        # 如果 unique_types 长度为 1，表示列表中所有元素的类型相同
        if len(unique_types) == 1:
            print('attributes_summary所有元素的类型相同')
        else:
            print('attributes_summary不同类型的元素存在')
        print("attributes_summary",type(attributes_summary[0]))  
        print("attributes_summary",attributes_summary[0])
        
        unique_types = set(type(elem) for elem in JAVA_strings_summary)

        # 如果 unique_types 长度为 1，表示列表中所有元素的类型相同
        if len(unique_types) == 1:
            print('JAVA_strings_summary所有元素的类型相同')
        else:
            print('JAVA_strings_summary不同类型的元素存在')
        print("JAVA_strings_summary",type(JAVA_strings_summary[0])) 
        print("JAVA_strings_summary",JAVA_strings_summary[0])
        print("JAVA_strings_summary",JAVA_strings_summary[1])
        print("JAVA_strings_summary",JAVA_strings_summary[2])
        
        
        unique_types = set(type(elem) for elem in NATIVE_strings_summary)

        # 如果 unique_types 长度为 1，表示列表中所有元素的类型相同
        if len(unique_types) == 1:
            print('NATIVE_strings_summary所有元素的类型相同')
        else:
            print('NATIVE_strings_summary不同类型的元素存在')
        print("NATIVE_strings_summary",type(NATIVE_strings_summary[0]))     
        print("NATIVE_strings_summary",NATIVE_strings_summary[0])  
            
        unique_types = set(type(elem) for elem in NATIVE_symbol_summary)

        # 如果 unique_types 长度为 1，表示列表中所有元素的类型相同
        if len(unique_types) == 1:
            print('NATIVE_symbol_summary所有元素的类型相同')
        else:
            print('NATIVE_symbol_summary不同类型的元素存在')
        print("NATIVE_symbol_summary",type(NATIVE_symbol_summary[0]))
        print("NATIVE_symbol_summary",NATIVE_symbol_summary[0])
        '''
        #NATIVE_symbol_summary.clear()
        #attributes_summary.clear()

        #加入判别式 在下方
        ToBeImproved = False
        #print("Anti-Debugging")
        #Anti-Debugging
        #HashValueComparison
        isHashValueComparisonA = 1
        isHashValueComparisonB = 0
        isHashValueComparisonC = 0
        '''
        for i in range(len(HashValueComparisonA)):
            if(HashValueComparisonA[i].lower() not in methods_summary):
                isHashValueComparisonA = 0
                break
        
        
        for s in methods_summary:
            if (("Class.getResourceAsStream".lower() in s) or ("Class.getDeclaredMethod".lower() in s)):
                isHashValueComparisonB = 1
                break
        
        if(isHashValueComparisonA and isHashValueComparisonB and isHashValueComparisonC):
            HashValueComparison = 1
        '''
        #HashValueComparison = currentisHashValueComparison
        CodeIntegrityChecking = currentisHashValueComparison
        #CodeIntegrityCheckingNEW = currentisHashValueComparison
        #AlteringDebuggerMemory
        isAlteringDebuggerMemoryA = 1
        isAlteringDebuggerMemoryB = 0
        
        for i in range(len(AlteringDebuggerMemoryA)):
            if(AlteringDebuggerMemoryA[i].lower() not in strings_summary): #NATIVE_strings_summary
                isAlteringDebuggerMemoryA = 0
                break
                
        for i in range(len(AlteringDebuggerMemoryB)):
            if(AlteringDebuggerMemoryB[i].lower() in strings_summary): #NATIVE_strings_summary
                isAlteringDebuggerMemoryB = 1
                print("AlteringDebuggerMemoryB[i]",AlteringDebuggerMemoryB[i])
                break
        
        for s in NATIVE_symbol_summary:
            if (("jdwp".lower() in s) or ("jdwpadbstate".lower() in s)):
                isAlteringDebuggerMemoryB = 1
                print("isAlteringDebuggerMemoryB",s)
                break

                
        if(isAlteringDebuggerMemoryA or isAlteringDebuggerMemoryB):
            AlteringDebuggerMemory = 1
            AlteringDebuggerMemoryOLD = 1
            
        
        #UsingTimingCheck
        isUsingTimingCheckB = currentisUsingTimingCheck
        
        if(isUsingTimingCheckB):
            UsingTimingCheck = 1
            
           
        #UsingSignals
        #UsingSignalsA = ['signal', 'sigaction']
        isUsingSignalsA = 0
        isUsingSignalsB = 0
        for i in range(len(UsingSignalsA)):
            if(UsingSignalsA[i].lower() in strings_summary):
                isUsingSignalsA = 1
                break
        
        if(iskill or israise):
            isUsingSignalsB = 1
       
           
        if(isUsingSignalsB):
            if(not isDebugVersion):
                UsingSignals = 1
                
            
        #UsingTracerPID
        isUsingTracerPIDA = 0
        isUsingTracerPIDB = 0
        isUsingTracerPIDC = 1
        isUsingTracerPIDD = 0
        isUsingTracerPIDH = 1

          
        for i in range(len(UsingTracerPIDA)):
            if(UsingTracerPIDA[i].lower() in strings_summary):
                isUsingTracerPIDA = 1
                print("UsingTracerPIDA[i]",UsingTracerPIDA[i])
                break
          
        for i in range(len(UsingTracerPIDB)):
            if(UsingTracerPIDB[i].lower() in strings_summary):
                isUsingTracerPIDB = 1
                print("UsingTracerPIDB[i]",UsingTracerPIDB[i])
                break
            
        for i in range(len(UsingTracerPIDC)):
            if(UsingTracerPIDC[i].lower() not in strings_summary):
                isUsingTracerPIDC = 0
                break
            
        for i in range(len(UsingTracerPIDD)):
            if(UsingTracerPIDD[i].lower() in strings_summary):
                isUsingTracerPIDD = 1
                print("UsingTracerPIDD[i]",UsingTracerPIDD[i])
                break
            
        for i in range(len(UsingTracerPIDH)):
            if(UsingTracerPIDH[i].lower() not in strings_summary):
                isUsingTracerPIDH = 0
                break
           
        if((isUsingTracerPIDA and ((isUsingTracerPIDB or isUsingTracerPIDC) or isUsingTracerPIDD))):
            UsingTracerPID = 1
            UsingTracerPIDOLD = 1
            
        
        if(isUsingTracerPIDH):
            UsingTracerPID = 1
        
        #PreemptPtraceAPI
        isPreemptPtraceAPIA = 0
        isPreemptPtraceAPIB = 0
         
        for i in range(len(PreemptPtraceAPIA)):
            if((PreemptPtraceAPIA[i].lower() in strings_summary) or (PreemptPtraceAPIA[i].lower() in methods_summary)):
                isPreemptPtraceAPIA = 1
                break
        
        if isptrace:
            isPreemptPtraceAPIB = 1
          
        if(isPreemptPtraceAPIA and isPreemptPtraceAPIB):
            PreemptPtraceAPI = 1
            
        
        
        #AntiDump
        isAntiDumpA = 1
        isAntiDumpB = 0
        isAntiDumpC = 1
        isAntiDumpD = 0
        isAntiDumpE = 1
        
        for i in range(len(AntiDumpA)):
            if(AntiDumpA[i].lower() not in strings_summary):
                isAntiDumpA = 0
                print("AntiDumpA[i] not in ",AntiDumpA[i])
                break
        
        for i in range(len(AntiDumpB)):
            if(AntiDumpB[i].lower() in strings_summary):
                isAntiDumpB = 1
                break
        
        for i in range(len(AntiDumpC)):
            if(AntiDumpC[i].lower() not in strings_summary):
                isAntiDumpC = 0
                print("AntiDumpC[i] not in ",AntiDumpC[i])
                break
                
        for i in range(len(AntiDumpD)):
            if(AntiDumpD[i].lower()  in strings_summary):
                isAntiDumpD = 1
                break
        

        for i in range(len(AntiDumpE)):
            if(AntiDumpE[i].lower() not in strings_summary):
                isAntiDumpE = 0
                print("AntiDumpE[i] not in ",AntiDumpE[i])
                break        
        if(isAntiDumpA and (isAntiDumpB or (isAntiDumpC and isAntiDumpD)) or isAntiDumpE):
            AntiDump = 1
            
        
        #DebuggerRelatedValue
        isDebuggerRelatedValueA = 0
        isDebuggerRelatedValueB = 0
        isDebuggerRelatedValueC = 0
        isDebuggerRelatedValueD = 0
        isDebuggerRelatedValueE = 0
        isDebuggerRelatedValueF = 0
        isDebuggerRelatedValueG = 0
        isDebuggerRelatedValueH = 1
        isDebuggerRelatedValueI = 1
        isDebuggerRelatedValueJ = 1
        isDebuggerRelatedValueK = 1
        isDebuggerRelatedValueL = 1
        isDebuggerRelatedValueM = 1
        isDebuggerRelatedValueN = 0
        isDebuggerRelatedValueO = 0
        isDebuggerRelatedValueP = 0
        isDebuggerRelatedValueQ = 0
        isDebuggerRelatedValueR = 0
        isDebuggerRelatedValueS = 0
           
        for i in range(len(DebuggerRelatedValueA)):
            if(DebuggerRelatedValueA[i].lower() in strings_summary):
                isDebuggerRelatedValueA = 1
                print("DebuggerRelatedValueA[i]",DebuggerRelatedValueA[i])
                break
            
        for i in range(len(DebuggerRelatedValueB)):
            if(DebuggerRelatedValueB[i].lower() in strings_summary):
                isDebuggerRelatedValueB = 1
                print("DebuggerRelatedValueB[i]",DebuggerRelatedValueB[i])
                break
            
        for i in range(len(DebuggerRelatedValueC)):
            if(DebuggerRelatedValueC[i].lower() in strings_summary):
                isDebuggerRelatedValueC = 1
                print("DebuggerRelatedValueC[i]",DebuggerRelatedValueC[i])
                break
            
        for i in range(len(DebuggerRelatedValueD)):
            if(DebuggerRelatedValueD[i].lower() in strings_summary):
                isDebuggerRelatedValueD = 1
                print("DebuggerRelatedValueD[i]",DebuggerRelatedValueD[i])
                break
            
        for i in range(len(DebuggerRelatedValueE)):
            if(DebuggerRelatedValueE[i].lower() in methods_summary):
                if(not isDebugVersion):
                    isDebuggerRelatedValueE = 1
                    print("DebuggerRelatedValueE[i]",DebuggerRelatedValueE[i])
                    break
                
        for i in range(len(DebuggerRelatedValueF)):
            if(DebuggerRelatedValueF[i].lower() in strings_summary):
                isDebuggerRelatedValueF = 1
                print("DebuggerRelatedValueF[i]",DebuggerRelatedValueF[i])
                break
                
        for i in range(len(DebuggerRelatedValueG)):
            count = 0
            if(DebuggerRelatedValueG[i].lower() in strings_summary):
                count += 1
                print("DebuggerRelatedValueG[i]",DebuggerRelatedValueG[i])
                if(count >= 2):
                    isDebuggerRelatedValueG = 1
                    break
        
        for i in range(len(DebuggerRelatedValueH)):
            if(DebuggerRelatedValueH[i].lower() not in strings_summary): 
                isDebuggerRelatedValueH = 0
                print("DebuggerRelatedValueH[i] NOT IN ",DebuggerRelatedValueH[i])
                break
        
        for i in range(len(DebuggerRelatedValueI)):
            if(DebuggerRelatedValueI[i].lower() not in strings_summary):
                isDebuggerRelatedValueI = 0
                print("DebuggerRelatedValueI[i] NOT IN",DebuggerRelatedValueI[i])
                break
        
        for i in range(len(DebuggerRelatedValueJ)):
            if(DebuggerRelatedValueJ[i].lower() not in strings_summary):
                isDebuggerRelatedValueJ = 0
                print("DebuggerRelatedValueJ[i] NOT IN",DebuggerRelatedValueJ[i])
                break
        
        
        for i in range(len(DebuggerRelatedValueK)):
            if(DebuggerRelatedValueK[i].lower() not in strings_summary):
                isDebuggerRelatedValueK = 0
                print("DebuggerRelatedValueK[i] NOT IN ",DebuggerRelatedValueK[i])
                break
                
        for i in range(len(DebuggerRelatedValueL)):
            if(DebuggerRelatedValueL[i].lower() not in strings_summary):
                isDebuggerRelatedValueL = 0
                print("DebuggerRelatedValueL[i] NOT IN",DebuggerRelatedValueL[i])
                break

        for i in range(len(DebuggerRelatedValueM)):
            if(DebuggerRelatedValueM[i].lower() not in strings_summary):
                isDebuggerRelatedValueM = 0
                print("DebuggerRelatedValueM[i] NOT IN",DebuggerRelatedValueM[i])
                break
                
        for i in range(len(DebuggerRelatedValueN)):
            if(DebuggerRelatedValueN[i].lower() in strings_summary):
                isDebuggerRelatedValueN = 1
                print("DebuggerRelatedValueN[i]",DebuggerRelatedValueN[i])
                break
         
        for i in range(len(DebuggerRelatedValueO)):
            if(DebuggerRelatedValueO[i].lower() in strings_summary):
                isDebuggerRelatedValueO = 1
                print("DebuggerRelatedValueO[i]",DebuggerRelatedValueO[i])
                break
        '''        
        for i in range(len(DebuggerRelatedValueP)):
            if(DebuggerRelatedValueP[i].lower() in strings_summary):
                isDebuggerRelatedValueP = 1
                break
        
        for i in range(len(DebuggerRelatedValueQ)):
            if(DebuggerRelatedValueQ[i].lower() in strings_summary):
                isDebuggerRelatedValueQ = 1
                break
        '''
        
        for i in range(len(DebuggerRelatedValueR)):
            if(DebuggerRelatedValueR[i].lower() in strings_summary):
                isDebuggerRelatedValueR = 1
                print("DebuggerRelatedValueR[i]",DebuggerRelatedValueR[i])
                break
                
        for i in range(len(DebuggerRelatedValueS)):
            if(DebuggerRelatedValueS[i].lower() in strings_summary):
                isDebuggerRelatedValueS = 1
                print("DebuggerRelatedValueS[i]",DebuggerRelatedValueS[i])
                break
        '''
        print("isDebuggerRelatedValueA",isDebuggerRelatedValueA)
        print("isDebuggerRelatedValueB",isDebuggerRelatedValueB)  
        print("isDebuggerRelatedValueC",isDebuggerRelatedValueC)  
        print("isDebuggerRelatedValueD",isDebuggerRelatedValueD)  
        print("isDebuggerRelatedValueE",isDebuggerRelatedValueE)  
        '''
        if(((isDebuggerRelatedValueA and isDebuggerRelatedValueB) or isDebuggerRelatedValueC or isDebuggerRelatedValueD)or \
             isDebuggerRelatedValueE or isDebuggerRelatedValueF or isDebuggerRelatedValueG or isDebuggerRelatedValueH or \
             isDebuggerRelatedValueI or isDebuggerRelatedValueJ or isDebuggerRelatedValueK or isDebuggerRelatedValueL or \
             isDebuggerRelatedValueM or (isDebuggerRelatedValueN and isDebuggerRelatedValueO or (isDebuggerRelatedValueP and isDebuggerRelatedValueQ) or \
             (isDebuggerRelatedValueR and isDebuggerRelatedValueS))):
            DebuggerRelatedValue = 1
            
            if((isDebuggerRelatedValueA and isDebuggerRelatedValueB)or isDebuggerRelatedValueC or isDebuggerRelatedValueD or isDebuggerRelatedValueE):
                DebuggerRelatedValueOLD = 1
            #if(isDebuggerRelatedValueF or isDebuggerRelatedValueG or isDebuggerRelatedValueH or  isDebuggerRelatedValueI or isDebuggerRelatedValueJ or isDebuggerRelatedValueK or isDebuggerRelatedValueL or isDebuggerRelatedValueM or (isDebuggerRelatedValueN and isDebuggerRelatedValueO or (isDebuggerRelatedValueP and isDebuggerRelatedValueQ) or (isDebuggerRelatedValueR and isDebuggerRelatedValueS))):
            #    DebuggerRelatedValueNEW = 1
        if("Lcom/unity3d/ads/android/UnityAdsUtils.DEBUG_DN".lower() in attributes_summary):
            DebuggerRelatedValue = 1
        
        if("Lcom/alipay/android/phone/mrpc/core/MiscUtils.DEBUG".lower() in attributes_summary):
            DebuggerRelatedValue = 1
        
        if("getprop service.adb.tcp.port" in strings_summary and "5037" in strings_summary):
            DebuggerRelatedValue = 1
        
        if("Lcom/mopub/common/util/ManifestUtils.isDebuggable".lower() in methods_summary):
            #lcom/mopub/common/util/manifestutils.isdebuggable
            DebuggerRelatedValue = 1
            
        if("Lcom/unity3d/ads/properties/ClientProperties.isAppDebuggable".lower() in methods_summary):
            DebuggerRelatedValue = 1
            
        if("lcom/umeng/commonsdk/utils/umutils.isdebug" in methods_summary):
            DebuggerRelatedValue = 1
        
        if("lorg/acra/acra.isdebuggable" in methods_summary):
            DebuggerRelatedValue = 1
            
        if("Lcom/microsoft/appcenter/Constants.APPLICATION_DEBUGGABLE".lower() in attributes_summary):
            DebuggerRelatedValue = 1
            
        if("lcom/unity3d/services/core/properties/clientproperties.isappdebuggable" in methods_summary):
            DebuggerRelatedValue = 1
            
        if("Lcom/google/android/gms/common/GooglePlayServicesUtilLight.honorsDebugCertificates".lower() in methods_summary and "debuggable release cert app rejected".lower() in strings_summary):
            DebuggerRelatedValue = 1
        
        
        #NumberofBreakpoints
        isNumberofBreakpointsA = 0
        isNumberofBreakpointsB = 0
            
        for i in range(len(NumberofBreakpointsA)):
            if(NumberofBreakpointsA[i].lower() in strings_summary):
                isNumberofBreakpointsA = 1
                print("NumberofBreakpointsA[i]",NumberofBreakpointsA[i])
                break
        
        for i in range(len(NumberofBreakpointsB)):
            if(NumberofBreakpointsB[i].lower() in strings_summary):
                isNumberofBreakpointsB = 1
                print("NumberofBreakpointsB[i]",NumberofBreakpointsB[i])
                break
        
        if(isNumberofBreakpointsA and isNumberofBreakpointsB):
            NumberofBreakpoints = 1
            BreakpointsetStructure = 1
            
         
        #BreakpointsetStructure
        isBreakpointsetStructureA = 1
        isBreakpointsetStructureB = 0
            
        for i in range(len(BreakpointsetStructureA)):
            if(BreakpointsetStructureA[i].lower() not in strings_summary):
                isBreakpointsetStructureA = 0
                print("BreakpointsetStructureA[i]",BreakpointsetStructureA[i])
                break
        
        
        for i in range(len(BreakpointsetStructureB)):
            if(BreakpointsetStructureB[i].lower() in strings_summary):
                isBreakpointsetStructureB = 1
                print("BreakpointsetStructureB[i]",BreakpointsetStructureB[i])
                break

        
        if(isBreakpointsetStructureA or isBreakpointsetStructureB):
            BreakpointsetStructure = 1
            
            
        #ModifyJdwpStateJdwpTransport
        isModifyJdwpStateJdwpTransportA = 0
         
        for i in range(len(ModifyJdwpStateJdwpTransportA)):
            if(ModifyJdwpStateJdwpTransportA[i].lower() in strings_summary):
                isModifyJdwpStateJdwpTransportA = 1
                print("isModifyJdwpStateJdwpTransportA[i]",isModifyJdwpStateJdwpTransportA[i])
                break
            
        if(isModifyJdwpStateJdwpTransportA):
            ModifyJdwpStateJdwpTransport = 1
            AlteringDebuggerMemory = 1
              
        #Anti-Emulator
        #DeviceIdentifier
        isDeviceIdentifierA = 0
        
        count = 0    
        for i in range(len(DeviceIdentifierA)):
            if(DeviceIdentifierA[i].lower() in strings_summary):
                count = count + 1
                
                print("DeviceIdentifierA[i]",DeviceIdentifierA[i])
                if(count >= 2):
                    isDeviceIdentifierA = 1
                    break
        
        if(isDeviceIdentifierA):
            DeviceIdentifierOLD = 1
        
        if("B3EEABB8EE11C2BE770B684D95219ECB" in strings_summary):
            isDeviceIdentifierA = 1
            print("DeviceIdentifierA","B3EEABB8EE11C2BE770B684D95219ECB")
        if(("Landroid/provider/Settings$Secure.getString".lower() in methods_summary) and ("Landroid/content/Context.getContentResolver".lower()  in methods_summary) and ("android_id".lower() in strings_summary)):
            if("generic" in strings_summary or "emulator"in strings_summary):
                isDeviceIdentifierA = 1
                print("DeviceIdentifierA","Landroid/provider/Settings$Secure.getString","Landroid/content/Context.getContentResolver","android_id")
        
        
        
        if(isDeviceIdentifierA):
            DeviceIdentifier = 1
            
           
        #CurrentBuild
        isCurrentBuildA = 0
        isCurrentBuildB = 0
        isCurrentBuildC = 0
        isCurrentBuildD = 1
        isCurrentBuildE = 1
        isCurrentBuildF = 1

        count = 0    
        for i in range(len(CurrentBuildA)):
            if(CurrentBuildA[i].lower() in strings_summary):
                count = count + 1
                print("CurrentBuildA",CurrentBuildA[i])
                if(count >= 2):
                    isCurrentBuildA = 1
                    break
        #print("isCurrentBuildA",count)
        CurrentBuildBC = CurrentBuildB + CurrentBuildC

        count = 0
        for i in range(len(CurrentBuildBC)):
            if(CurrentBuildBC[i].lower() in strings_summary):
                count = count + 1
                print("CurrentBuildBC",CurrentBuildBC[i])
                if(count >= 2):
                    isCurrentBuildB = 1
                    isCurrentBuildC = 1
                    break
        print("CurrentBuildBC",count)
        
        
        for i in range(len(CurrentBuildD)):
            if(CurrentBuildD[i].lower() not in strings_summary):
                isCurrentBuildD = 0
                print("CurrentBuildD NOT IN ",CurrentBuildD[i])
                break
        
        for i in range(len(CurrentBuildE)):
            if(CurrentBuildE[i].lower() not in strings_summary):
                isCurrentBuildE = 0
                print("CurrentBuildE NOT IN ",CurrentBuildE[i])
                break
        

        for i in range(len(CurrentBuildF)):
            if(CurrentBuildF[i].lower() not in strings_summary):
                isCurrentBuildF = 0
                print("CurrentBuildF NOT IN ",CurrentBuildF[i])
                break
        
        if("Landroid/os/Build.BRAND".lower() in strings_summary and "generic" in strings_summary):
            CurrentBuild = 1
        
        if("Landroid/os/Build.BRAND".lower() in strings_summary and "generic_" in strings_summary):
            CurrentBuild = 1
        
        if("Landroid/os/Build.FINGERPRINT".lower() in attributes_summary and "generic" in strings_summary):
            CurrentBuild = 1
            
        if("Landroid/os/Build.PRODUCT".lower() in attributes_summary and "google_sdk" in strings_summary and "sdk" in strings_summary and "sdk_gphone" in strings_summary):
            CurrentBuild = 1
        
        if(isCurrentBuildA and (isCurrentBuildB or isCurrentBuildC) or isCurrentBuildD or isCurrentBuildE or isCurrentBuildF):
            CurrentBuild = 1
        
        if(isCurrentBuildA and (isCurrentBuildB or isCurrentBuildC)):
            CurrentBuildOLD = 1    
        
        #TelephonyManager
        isTelephonyManagerA = 0
        isTelephonyManagerB = 0
        isTelephonyManagerC = 1
        
        count = 0
        for i in range(len(TelephonyManagerA)):
            if(TelephonyManagerA[i].lower() in methods_summary):   
                print("TelephonyManagerA[i]",TelephonyManagerA[i])
                #print("TelephonyManagerA[i]",TelephonyManagerA[i])
                if(count>=4):
                    isTelephonyManagerA = 1
                    break
                    
        
        count = 0        
        for i in range(len(TelephonyManagerB)):
            if(TelephonyManagerB[i].lower() in strings_summary): 
                count += 1
                print("TelephonyManagerB",TelephonyManagerB[i])
                if(count>=2):
                    isTelephonyManagerB = 1
                    break        
        
        for i in range(len(TelephonyManagerC)):
            if(TelephonyManagerC[i].lower() not in strings_summary):   
                print("TelephonyManagerC not in",TelephonyManagerC[i])
                isTelephonyManagerC = 0
                break 
        
        if(isTelephonyManagerA and (isTelephonyManagerB or isTelephonyManagerC)):
            if("generic" in strings_summary or "emulator" in strings_summary):
                TelephonyManager = 1
            
            
          
        #HardwareComponents
        isHardwareComponentsA = 0
        isHardwareComponentsB = 0
        isHardwareComponentsC = 1
        isHardwareComponentsD = 1
        isHardwareComponentsE = 1
        isHardwareComponentsF = 0
        isHardwareComponentsG = 1
        isHardwareComponentsH = 1
        isHardwareComponentsJ = 1
        isHardwareComponentsK = 1
        isHardwareComponentsL = 0
        
        count = 0
        for i in range(len(HardwareComponentsA)):
            if((HardwareComponentsA[i].lower() in strings_summary) ):
                count = count + 1
                print("HardwareComponentsA[i]",HardwareComponentsA[i])
                if(count >= 3):    
                    isHardwareComponentsA = 1
                    break
        if("/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq" in strings_summary):
            isHardwareComponentsA = 1
            print("/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq")
        isHardwareComponentsBAdapter = 0
        isHardwareComponentsBREQUEST = 0
        isHardwareComponentsBENABLE = 0
        
        if(HardwareComponentsB[0] in methods_summary):
            isHardwareComponentsBAdapter = 1
            print("HardwareComponentsB[0]",HardwareComponentsB[0])
            
        if(HardwareComponentsB[1] in JAVA_strings_summary):
            isHardwareComponentsBREQUEST = 1
            print("HardwareComponentsB[1]",HardwareComponentsB[1])
        
        if(HardwareComponentsB[2] in methods_summary):
            isHardwareComponentsBENABLE = 1
            print("HardwareComponentsB[2]",HardwareComponentsB[2])
     
        if(isHardwareComponentsBAdapter == 1 and isHardwareComponentsBREQUEST == 0 and isHardwareComponentsBENABLE == 0):
            isHardwareComponentsB = 1
            
            
            
        for i in range(len(HardwareComponentsC)):
            if((HardwareComponentsC[i].lower() not in strings_summary)):
                isHardwareComponentsC = 0
                print("HardwareComponentsC[i] not in ",HardwareComponentsC[i])
                break
            
        for i in range(len(HardwareComponentsD)):
            if((HardwareComponentsD[i].lower() not in strings_summary) ):
                isHardwareComponentsD = 0
                print("HardwareComponentsD[i] not in ",HardwareComponentsD[i])
                break
            
        for i in range(len(HardwareComponentsE)):
            if((HardwareComponentsE[i].lower() not in strings_summary) ):
                isHardwareComponentsE = 0
                print("HardwareComponentsE[i] not in ",HardwareComponentsE[i])
                break
            
        for i in range(len(HardwareComponentsF)):
            if(HardwareComponentsF[i].lower() in methods_summary):
                isHardwareComponentsF = 1
                print("HardwareComponentsF[i]",HardwareComponentsF[i])
                break
            
        for i in range(len(HardwareComponentsG)):
            if((HardwareComponentsG[i].lower() not in strings_summary) ):
                isHardwareComponentsG = 0
                print("HardwareComponentsG[i] not in ",HardwareComponentsG[i])
                break
            
        for i in range(len(HardwareComponentsH)):
            if((HardwareComponentsH[i].lower() not in strings_summary) ):
                isHardwareComponentsH = 0
                print("HardwareComponentsH[i] not in ",HardwareComponentsH[i])
                break
        
        '''
        for i in range(len(HardwareComponentsJ)):
            if((HardwareComponentsJ[i].lower() not in strings_summary)):
                isHardwareComponentsJ = 0
                break
        '''
        isHardwareComponentsJ = 0
        
        for i in range(len(HardwareComponentsK)):
            if((HardwareComponentsK[i].lower() not in strings_summary)):
                isHardwareComponentsK = 0
                print("HardwareComponentsK[i] not in ",HardwareComponentsK[i])
                break
        
        for i in range(len(HardwareComponentsL)):
            if((HardwareComponentsL[i].lower() in strings_summary)):
                isHardwareComponentsL = 1
                print("HardwareComponentsL[i]",HardwareComponentsL[i])
                break
                
        if(isHardwareComponentsA  or isHardwareComponentsC or isHardwareComponentsD or isHardwareComponentsE or \
           isHardwareComponentsG or isHardwareComponentsH or \
           (isHardwareComponentsK and isHardwareComponentsL)):
            if("generic" in strings_summary or "emulator" in strings_summary):
                HardwareComponents = 1
        
        
        #EmulatorRelatedStringsAndSystemProperties
        isEmulatorRelatedStringsAndSystemPropertiesA = 0
        isEmulatorRelatedStringsAndSystemPropertiesB = 0
        isEmulatorRelatedStringsAndSystemPropertiesC = 0
        isEmulatorRelatedStringsAndSystemPropertiesD = 0
        isEmulatorRelatedStringsAndSystemPropertiesE = 0
        isEmulatorRelatedStringsAndSystemPropertiesF = 0
        isEmulatorRelatedStringsAndSystemPropertiesG = 0
        isEmulatorRelatedStringsAndSystemPropertiesH = 0
        isEmulatorRelatedStringsAndSystemPropertiesI = 1
            
        for i in range(len(EmulatorRelatedStringsAndSystemPropertiesA)):
            if(EmulatorRelatedStringsAndSystemPropertiesA[i].lower() in strings_summary):
                isEmulatorRelatedStringsAndSystemPropertiesA = 1
                print("EmulatorRelatedStringsAndSystemPropertiesA[i]",EmulatorRelatedStringsAndSystemPropertiesA[i])
                break
            
        for i in range(len(EmulatorRelatedStringsAndSystemPropertiesB)):
            if(EmulatorRelatedStringsAndSystemPropertiesB[i].lower() in strings_summary):
                isEmulatorRelatedStringsAndSystemPropertiesB = 1
                print("EmulatorRelatedStringsAndSystemPropertiesB[i]",EmulatorRelatedStringsAndSystemPropertiesB[i])
                break
            
        for i in range(len(EmulatorRelatedStringsAndSystemPropertiesC)):
            if(EmulatorRelatedStringsAndSystemPropertiesC[i].lower() in strings_summary):
                isEmulatorRelatedStringsAndSystemPropertiesC = 1
                print("EmulatorRelatedStringsAndSystemPropertiesC[i]",EmulatorRelatedStringsAndSystemPropertiesC[i])
                break
        
        count = 0
        for i in range(len(EmulatorRelatedStringsAndSystemPropertiesD)):
            if(EmulatorRelatedStringsAndSystemPropertiesD[i].lower() in strings_summary):
                count = count + 1
                print("EmulatorRelatedStringsAndSystemPropertiesD[i]",EmulatorRelatedStringsAndSystemPropertiesD[i])
                if(count >= 3):
                    isEmulatorRelatedStringsAndSystemPropertiesD = 1
                    break
            
        for i in range(len(EmulatorRelatedStringsAndSystemPropertiesE)):
            if(EmulatorRelatedStringsAndSystemPropertiesE[i].lower() in methods_summary):
                isEmulatorRelatedStringsAndSystemPropertiesE = 1
                print("EmulatorRelatedStringsAndSystemPropertiesE[i]",EmulatorRelatedStringsAndSystemPropertiesE[i])
                break
          
        for i in range(len(EmulatorRelatedStringsAndSystemPropertiesF)):
            if(EmulatorRelatedStringsAndSystemPropertiesF[i].lower() in strings_summary):
                isEmulatorRelatedStringsAndSystemPropertiesF = 1
                print("EmulatorRelatedStringsAndSystemPropertiesF[i]",EmulatorRelatedStringsAndSystemPropertiesF[i])
                break
            
        for i in range(len(EmulatorRelatedStringsAndSystemPropertiesG)):
            if(EmulatorRelatedStringsAndSystemPropertiesG[i].lower() in strings_summary):
                isEmulatorRelatedStringsAndSystemPropertiesG = 1
                print("EmulatorRelatedStringsAndSystemPropertiesG[i]",EmulatorRelatedStringsAndSystemPropertiesG[i])
                break
        
        count = 0    
        for i in range(len(EmulatorRelatedStringsAndSystemPropertiesH)):
            if(EmulatorRelatedStringsAndSystemPropertiesH[i].lower() in strings_summary):
                count = count + 1
                print("EmulatorRelatedStringsAndSystemPropertiesH[i]",EmulatorRelatedStringsAndSystemPropertiesH[i])
                if(count >= 3):
                    isEmulatorRelatedStringsAndSystemPropertiesH = 1
                    break
        

        for i in range(len(EmulatorRelatedStringsAndSystemPropertiesI)):
            if(EmulatorRelatedStringsAndSystemPropertiesI[i].lower() not in strings_summary):
                isEmulatorRelatedStringsAndSystemPropertiesI = 0
                print("EmulatorRelatedStringsAndSystemPropertiesI[i] NOT IN ",EmulatorRelatedStringsAndSystemPropertiesI[i])
                break
                
        if((isEmulatorRelatedStringsAndSystemPropertiesA and isEmulatorRelatedStringsAndSystemPropertiesB and isEmulatorRelatedStringsAndSystemPropertiesC ) or \
           (isEmulatorRelatedStringsAndSystemPropertiesD or isEmulatorRelatedStringsAndSystemPropertiesE) or ((isEmulatorRelatedStringsAndSystemPropertiesF and \
            isEmulatorRelatedStringsAndSystemPropertiesG) or isEmulatorRelatedStringsAndSystemPropertiesH) or isEmulatorRelatedStringsAndSystemPropertiesI):
            EmulatorRelatedStringsAndSystemProperties = 1
            #if(AntiEmulatorStringsNatives45.lower() in strings_summary or AntiEmulatorStringsNatives46.lower() in strings_summary or AntiEmulatorStringsNatives47.lower() in strings_summary):
            #    EmulatorRelatedStringsAndSystemPropertiesNEW = 1
        
        
        EmulatorRelatedStringsAndSystemPropertiesF.remove(AntiEmulatorStringsNatives45)
        EmulatorRelatedStringsAndSystemPropertiesF.remove(AntiEmulatorStringsNatives46)
        EmulatorRelatedStringsAndSystemPropertiesH.remove(AntiEmulatorStringsNatives47)
        
        EmulatorRelatedStringsAndSystemPropertiesH.remove(AntiEmulatorStrings51)
        EmulatorRelatedStringsAndSystemPropertiesH.remove(AntiEmulatorStrings52)
        EmulatorRelatedStringsAndSystemPropertiesH.remove(AntiEmulatorStrings53)
        EmulatorRelatedStringsAndSystemPropertiesH.remove(AntiEmulatorStrings54)
        EmulatorRelatedStringsAndSystemPropertiesH.remove(AntiEmulatorStrings55)
        
        for item in Emulatorexa:
            while item in EmulatorRelatedStringsAndSystemPropertiesH:
                EmulatorRelatedStringsAndSystemPropertiesH.remove(item)
        
        

        isEmulatorRelatedStringsAndSystemPropertiesA = 0
        isEmulatorRelatedStringsAndSystemPropertiesB = 0
        isEmulatorRelatedStringsAndSystemPropertiesC = 0
        isEmulatorRelatedStringsAndSystemPropertiesD = 0
        isEmulatorRelatedStringsAndSystemPropertiesE = 0
        isEmulatorRelatedStringsAndSystemPropertiesF = 0
        isEmulatorRelatedStringsAndSystemPropertiesG = 0
        isEmulatorRelatedStringsAndSystemPropertiesH = 0
            
        for i in range(len(EmulatorRelatedStringsAndSystemPropertiesA)):
            if(EmulatorRelatedStringsAndSystemPropertiesA[i].lower() in strings_summary):
                isEmulatorRelatedStringsAndSystemPropertiesA = 1
                break
            
        for i in range(len(EmulatorRelatedStringsAndSystemPropertiesB)):
            if(EmulatorRelatedStringsAndSystemPropertiesB[i].lower() in strings_summary):
                isEmulatorRelatedStringsAndSystemPropertiesB = 1
                break
            
        for i in range(len(EmulatorRelatedStringsAndSystemPropertiesC)):
            if(EmulatorRelatedStringsAndSystemPropertiesC[i].lower() in strings_summary):
                isEmulatorRelatedStringsAndSystemPropertiesC = 1
                break
        
        count = 0
        for i in range(len(EmulatorRelatedStringsAndSystemPropertiesD)):
            if(EmulatorRelatedStringsAndSystemPropertiesD[i].lower() in strings_summary):
                count = count + 1
                if(count >= 3):
                    isEmulatorRelatedStringsAndSystemPropertiesD = 1
                    break
            
        for i in range(len(EmulatorRelatedStringsAndSystemPropertiesE)):
            if(EmulatorRelatedStringsAndSystemPropertiesE[i].lower() in methods_summary):
                isEmulatorRelatedStringsAndSystemPropertiesE = 1
                break
          
        for i in range(len(EmulatorRelatedStringsAndSystemPropertiesF)):
            if(EmulatorRelatedStringsAndSystemPropertiesF[i].lower() in strings_summary):
                isEmulatorRelatedStringsAndSystemPropertiesF = 1
                break
            
        for i in range(len(EmulatorRelatedStringsAndSystemPropertiesG)):
            if(EmulatorRelatedStringsAndSystemPropertiesG[i].lower() in strings_summary):
                isEmulatorRelatedStringsAndSystemPropertiesG = 1
                break
        
        count = 0    
        for i in range(len(EmulatorRelatedStringsAndSystemPropertiesH)):
            if(EmulatorRelatedStringsAndSystemPropertiesH[i].lower() in strings_summary):
                count = count + 1
                if(count >= 3):
                    isEmulatorRelatedStringsAndSystemPropertiesH = 1
                    break
        '''
        print("isEmulatorRelatedStringsAndSystemPropertiesA",isEmulatorRelatedStringsAndSystemPropertiesA)
        print("isEmulatorRelatedStringsAndSystemPropertiesB",isEmulatorRelatedStringsAndSystemPropertiesB)  
        print("isEmulatorRelatedStringsAndSystemPropertiesC",isEmulatorRelatedStringsAndSystemPropertiesC)  
        print("isEmulatorRelatedStringsAndSystemPropertiesD",isEmulatorRelatedStringsAndSystemPropertiesD)  
        print("isEmulatorRelatedStringsAndSystemPropertiesE",isEmulatorRelatedStringsAndSystemPropertiesE)  
        print("isEmulatorRelatedStringsAndSystemPropertiesF",isEmulatorRelatedStringsAndSystemPropertiesF)  
        print("isEmulatorRelatedStringsAndSystemPropertiesG",isEmulatorRelatedStringsAndSystemPropertiesG)  
        print("isEmulatorRelatedStringsAndSystemPropertiesH",isEmulatorRelatedStringsAndSystemPropertiesH)  
        '''
        if((isEmulatorRelatedStringsAndSystemPropertiesA and isEmulatorRelatedStringsAndSystemPropertiesB and isEmulatorRelatedStringsAndSystemPropertiesC ) or \
           (isEmulatorRelatedStringsAndSystemPropertiesD or isEmulatorRelatedStringsAndSystemPropertiesE) or ((isEmulatorRelatedStringsAndSystemPropertiesF and \
            isEmulatorRelatedStringsAndSystemPropertiesG) or isEmulatorRelatedStringsAndSystemPropertiesH)):
            EmulatorRelatedStringsAndSystemPropertiesOLD = 1
        
        
        EmulatorRelatedStringsAndSystemPropertiesF.append(AntiEmulatorStringsNatives45)
        EmulatorRelatedStringsAndSystemPropertiesF.append(AntiEmulatorStringsNatives46)
        EmulatorRelatedStringsAndSystemPropertiesH.append(AntiEmulatorStringsNatives47)
        
        EmulatorRelatedStringsAndSystemPropertiesH.append(AntiEmulatorStrings51)
        EmulatorRelatedStringsAndSystemPropertiesH.append(AntiEmulatorStrings52)
        EmulatorRelatedStringsAndSystemPropertiesH.append(AntiEmulatorStrings53)
        EmulatorRelatedStringsAndSystemPropertiesH.append(AntiEmulatorStrings54)
        EmulatorRelatedStringsAndSystemPropertiesH.append(AntiEmulatorStrings55)
        
        EmulatorRelatedStringsAndSystemPropertiesH = EmulatorRelatedStringsAndSystemPropertiesH + Emulatorexa

           
        #SensorInformation
        isSensorInformationA = 0  #getSensor
        isSensorInformationB = 0  #registerSensor
        isSensorInformationC = 0
        
        
        for i in range(len(SensorInformationA)):
            if(SensorInformationA[i].lower() in methods_summary):
                isSensorInformationA = 1
                print("SensorInformationA[i]",SensorInformationA[i])
                break
        
        for i in range(len(SensorInformationB)):
            if(SensorInformationB[i].lower() in methods_summary):
                isSensorInformationB = 1
                print("SensorInformationB[i]",SensorInformationB[i])
                break
            
            
        if(isSensorInformationA == 1 and isSensorInformationB == 0):
            SensorInformation = 1
            #print("OLD SensorInformation = 1")
        
        
        for i in range(len(SensorInformationC)):
            if(SensorInformationC[i].lower() in methods_summary):
                isSensorInformationC = 1
                break
        if(isSensorInformationC == 1):
            SensorInformation = 1
            
            
        #ContextSwitchBasedDetection  ToBeImproved
        
        
        isContextSwitchBasedDetectionA = 1
        isContextSwitchBasedDetectionB = 0
        isContextSwitchBasedDetectionC = 0
        
        
        for i in range(len(ContextSwitchBasedDetectionA)):
            if(ContextSwitchBasedDetectionA[i].lower() not in strings_summary): #Native
                isContextSwitchBasedDetectionA = 0
                break
        
        for i in range(len(ContextSwitchBasedDetectionB)):
            if(ContextSwitchBasedDetectionB[i].lower()  in strings_summary):#Native
                isContextSwitchBasedDetectionB = 1
                break
        if( NOP90 or ContextSwitchBasedDetectionNativeS3 in strings_summary):#Native
            isContextSwitchBasedDetectionC = 1
                
        
        if(isContextSwitchBasedDetectionA and (not isContextSwitchBasedDetectionB) and isContextSwitchBasedDetectionC):
            ContextSwitchBasedDetection = 1
            
            
        #TranslationBlockCacheBasedDetection
        
        
        
        
        
        
        #print("isTranslationBlockCacheBasedDetectionA",isTranslationBlockCacheBasedDetectionA)    
        if(isTranslationBlockCacheBasedDetectionA or isTranslationBlockCacheBasedDetectionB):
            TranslationBlockCacheBasedDetection = 1
              
         
        #MisalignedVectorizationBasedDetection
        
        isMisalignedVectorizationBasedDetectionA = 0
        
        
        for i in range(len(MisalignedVectorizationBasedDetectionA)):
            if(MisalignedVectorizationBasedDetectionA[i].lower() in strings_summary): #native
                isMisalignedVectorizationBasedDetectionA = 1
                break
        
        
        if( isMisalignedVectorizationBasedDetectionA and isMisalignedVectorizationBasedDetectionB):
            MisalignedVectorizationBasedDetection = 1
            
            
        #UpdatestoExecutionStateBits
        
            
            
        #IncompleteSanitizationforUndefinedInstructions
        isIncompleteSanitizationforUndefinedInstructionsA = 0
        '''
        for i in range(len(IncompleteSanitizationforUndefinedInstructionsA)):
            if(IncompleteSanitizationforUndefinedInstructionsA[i].lower() in strings_summary): #native
                isIncompleteSanitizationforUndefinedInstructionsA = 1
                break
        
            
            
        if(isIncompleteSanitizationforUndefinedInstructionsA and isIncompleteSanitizationforUndefinedInstructionsB):
            IncompleteSanitizationforUndefinedInstructions = 1
        '''   
        IncompleteSanitizationforUndefinedInstructions = 0    #放弃
        #GraphicalPerformance
        isGraphicalPerformanceA = 0
        isGraphicalPerformanceB = 0
        isGraphicalPerformanceC = 1
        isGraphicalPerformanceD = 0 
        
        '''        
        for i in range(len(GraphicalPerformanceC)):
            if(GraphicalPerformanceC[i].lower() not in methods_summary):
                isGraphicalPerformanceC =0
                break
        
        for i in range(len(GraphicalPerformanceD)):
            if(GraphicalPerformanceD[i].lower() in methods_summary):
                isGraphicalPerformanceD =1
                break    #"Ljava/lang/System.nanoTime"
                
        if(isGraphicalPerformanceC and isGraphicalPerformanceD):
            GraphicalPerformance =1
        '''    
        GraphicalPerformance = 0 #放弃   
            
        #PresenceofOtherApps
        isPresenceofOtherAppsA = 0
        isPresenceofOtherAppsB = 0
        isPresenceofOtherAppsC = 0
        isPresenceofOtherAppsD = 0
        isPresenceofOtherAppsE = 0
        isPresenceofOtherAppsF = 0
        
        
        count = 0    
        for i in range(len(PresenceofOtherAppsA)):
            if(PresenceofOtherAppsA[i].lower() in strings_summary):
                count += 1
                print("PresenceofOtherAppsA[i]",PresenceofOtherAppsA[i])
                if(count >= 3):
                    isPresenceofOtherAppsA = 1
                    break
                
        for i in range(len(PresenceofOtherAppsB)):
            if(PresenceofOtherAppsB[i].lower() in methods_summary):
                isPresenceofOtherAppsB = 1
                print("PresenceofOtherAppsB[i]",PresenceofOtherAppsB[i])
                break
                 
        #CG
        isPresenceofOtherAppsC = currentisPresenceofOtherAppsC
        
        '''
        for i in range(len(PresenceofOtherAppsD)):
            if(PresenceofOtherAppsD[i].lower() in methods_summary):
                isPresenceofOtherAppsD = 1
                break
                
        for i in range(len(PresenceofOtherAppsE)):
            if(PresenceofOtherAppsE[i].lower() in strings_summary):
                isPresenceofOtherAppsE = 1
                break
        '''       
        for i in range(len(PresenceofOtherAppsF)):
            if(PresenceofOtherAppsF[i].lower() in strings_summary ):
                isPresenceofOtherAppsF = 1
                print("PresenceofOtherAppsF[i]",PresenceofOtherAppsF[i])
                break
                
        #(A∧B)∨(B∧C)∨(D∧E)∨(E∧F∧C)        
        if((isPresenceofOtherAppsA and isPresenceofOtherAppsB) or isPresenceofOtherAppsC or(isPresenceofOtherAppsD and isPresenceofOtherAppsE) or (isPresenceofOtherAppsE and isPresenceofOtherAppsF and isPresenceofOtherAppsC)):
            PresenceofOtherApps = 1
        
        PresenceofOtherApps = 0 #废弃
            
        

        #FilePath
        isFilePathA = 0
        isFilePathB = 1
        isFilePathC = 0
        isFilePathD = 1
        isFilePathE = 0
        
        for i in range(len(FilePathA)):
            if(FilePathA[i].lower() in strings_summary ):
                isFilePathA = 1
                print("FilePathA[i]",FilePathA[i])
                break
                
        isFilePathB = currentisFilePathB
                
        for i in range(len(FilePathC)):
            if(FilePathC[i].lower() in strings_summary ):
                isFilePathC = 1            
                break
        
        for i in range(len(FilePathE)):
            if(FilePathE[i].lower() in strings_summary ):
                isFilePathE = 1            
                break
                
        isFilePathD = currentisFilePathD
        print("isFilePathD",isFilePathD)
        if(isFilePathA or isFilePathD or isFilePathE):
            FilePath = 1
            
            
        #ShareUID
        isShareUIDA = 0
        isShareUIDB = 1
        isShareUIDC = 0
        isShareUIDD = 0
        isShareUIDE = 0
        isShareUIDF = 0
        isShareUIDG = 0
        isShareUIDH = 0
        
        for i in range(len(ShareUIDA)):
            if(ShareUIDA[i].lower() in strings_summary):
                isShareUIDA = 1
                print("ShareUIDA[i]",ShareUIDA[i])
                break   
        
        for i in range(len(ShareUIDB)):
            if(ShareUIDB[i].lower() not in strings_summary):
                isShareUIDB = 0
                print("ShareUIDB[i] NOT IN",ShareUIDB[i])
                break
                
        for i in range(len(ShareUIDC)):
            if(ShareUIDC[i].lower()  in strings_summary):
                isShareUIDC = 1
                print("ShareUIDC[i]",ShareUIDC[i])
                break

        for i in range(len(ShareUIDD)):
            if(ShareUIDD[i].lower() in methods_summary):
                isShareUIDD = 1
                print("ShareUIDD[i]",ShareUIDD[i])
                break

        for i in range(len(ShareUIDE)):
            if(ShareUIDE[i].lower() in methods_summary):
                isShareUIDE = 1
                print("ShareUIDE[i]",ShareUIDE[i])
                break
        
        for i in range(len(ShareUIDF)):
            if(ShareUIDF[i].lower() in methods_summary):
                isShareUIDF = 1
                print("ShareUIDF[i]",ShareUIDF[i])
                break
                
        for i in range(len(ShareUIDG)):
            if(ShareUIDG[i].lower() in classes_summary):
                isShareUIDG = 1
                print("ShareUIDG[i]",ShareUIDG[i])
                break
        
        for i in range(len(ShareUIDH)):
            if(ShareUIDH[i].lower() in strings_summary):
                isShareUIDH = 1
                print("ShareUIDH[i]",ShareUIDH[i])
                break
        
        # A 0   b 52  c 0  d 36  e 45  f 214
        if(isShareUIDA and  isShareUIDB and isShareUIDC and isShareUIDH and isShareUIDG):
            ShareUID = 1
            
            
        #PortDetection
        isPortDetectionA = 1
        isPortDetectionB = 1
        isPortDetectionC = 0
        isPortDetectionD = 0
        
        for i in range(len(PortDetectionA)):
            if(PortDetectionA[i].lower() not in methods_summary):
                isPortDetectionA = 0
                print("PortDetectionA[i] NOT IN ",PortDetectionA[i])
                break
        
        for i in range(len(PortDetectionB)):
            if(PortDetectionB[i].lower() not in strings_summary):
                isPortDetectionB = 0
                print("PortDetectionB[i] NOT IN ",PortDetectionB[i])
                break
        
        for i in range(len(PortDetectionC)):
            if(PortDetectionC[i].lower() in methods_summary):
                isPortDetectionC = 1
                print("PortDetectionC[i]",PortDetectionC[i])
                break
        
        for i in range(len(PortDetectionD)):
            if(PortDetectionD[i].lower() in strings_summary):
                isPortDetectionD = 1
                print("PortDetectionC[i]",PortDetectionC[i])
                break
        
        if(isPortDetectionA and isPortDetectionB and (isPortDetectionC or isPortDetectionD)):
            PortDetection = 1
            
            
        #CodeInjectionAndHooking
        isCodeInjectionAndHookingA = 1
        isCodeInjectionAndHookingB = 1
        isCodeInjectionAndHookingC = 0
        
        for i in range(len(CodeInjectionAndHookingA)):
            if(CodeInjectionAndHookingA[i].lower() not in strings_summary):
                isCodeInjectionAndHookingA = 0
                print("CodeInjectionAndHookingA[i] NOT IN",CodeInjectionAndHookingA[i])
                break
                
        isCodeInjectionAndHookingB = currentisCodeInjectionAndHookingB
        
        for i in range(len(CodeInjectionAndHookingC)):
            if(CodeInjectionAndHookingC[i].lower() in strings_summary):
                isCodeInjectionAndHookingC = 1
                print("isCodeInjectionAndHookingC[i]",CodeInjectionAndHookingC[i])
                break
        
        if(isCodeInjectionAndHookingA or (isCodeInjectionAndHookingB and isCodeInjectionAndHookingC)):
            CodeInjectionAndHooking = 1
            
            
        
        #Anti-Tampering
        #SafetyNetAttestation
                
        isSafetyNetAttestationA = 0
        isSafetyNetAttestationB = 0
        isSafetyNetAttestationC = 0
        isSafetyNetAttestationD = 0
        isSafetyNetAttestationE = 0
            
        for i in range(len(SafetyNetAttestationA)):
            if(SafetyNetAttestationA[i].lower() in methods_summary):
                 isSafetyNetAttestationA = 1
                 print("isSafetyNetAttestationA",SafetyNetAttestationA[i])
                 break
                
        for i in range(len(SafetyNetAttestationB)):
            if(SafetyNetAttestationB[i].lower() in classes_summary):
                isSafetyNetAttestationB = 1
                print("isSafetyNetAttestationB",SafetyNetAttestationB[i])
                break
        
        #print(type(methods_summary[0]))
        #print(type(classes_summary[0]))
        #print(type(strings_summary[0]))
        #print(type(NATIVE_strings_summary[0]))
        #print(type(JAVA_strings_summary[0]))
        for i in range(len(SafetyNetAttestationC)):
            if(SafetyNetAttestationC[i].lower() in methods_summary):
                isSafetyNetAttestationC = 1
                print("isSafetyNetAttestationC",SafetyNetAttestationC[i])
                break


        for i in range(len(SafetyNetAttestationD)):
            if(SafetyNetAttestationD[i].lower() in methods_summary):
                isSafetyNetAttestationD = 1
                print("isSafetyNetAttestationD",SafetyNetAttestationD[i])
                break
                
        
        for i in range(len(SafetyNetAttestationE)):
            if(SafetyNetAttestationE[i].lower() in strings_summary):
                isSafetyNetAttestationE = 1
                print("isSafetyNetAttestationE",SafetyNetAttestationE[i])
                break
        
        if(isSafetyNetAttestationA and isSafetyNetAttestationB):
            SafetyNetAttestation = 1
            #if((AntiTamperingSafetyNetAttestationMethodsm4 in methods_summary or AntiTamperingSafetyNetAttestationMethodsm5 in methods_summary or AntiTamperingSafetyNetAttestationMethodsm10 in methods_summary) and isSafetyNetAttestationB):
            #    SafetyNetAttestationNEW = 1
        
        if((isSafetyNetAttestationC and (isSafetyNetAttestationD or isSafetyNetAttestationE))):
            SafetyNetAttestation = 1
            #SafetyNetAttestationNEW = 1
        
        SafetyNetAttestationA.remove(AntiTamperingSafetyNetAttestationMethodsm4)
        SafetyNetAttestationA.remove(AntiTamperingSafetyNetAttestationMethodsm5)
        SafetyNetAttestationA.remove(AntiTamperingSafetyNetAttestationMethodsm10)
        
        isSafetyNetAttestationA = 0
        isSafetyNetAttestationB = 0
            
        for i in range(len(SafetyNetAttestationA)):
            if(SafetyNetAttestationA[i].lower() in methods_summary):
                 isSafetyNetAttestationA = 1
                 print("SafetyNetAttestationA[i]",SafetyNetAttestationA[i])
                 break
                
        for i in range(len(SafetyNetAttestationB)):
            if(SafetyNetAttestationB[i].lower() in classes_summary):
                isSafetyNetAttestationB = 1
                print("SafetyNetAttestationB[i]",SafetyNetAttestationB[i])
                break
            
        if(isSafetyNetAttestationA and isSafetyNetAttestationB):
            SafetyNetAttestationOLD = 1
            
        SafetyNetAttestationA.append(AntiTamperingSafetyNetAttestationMethodsm4)
        SafetyNetAttestationA.append(AntiTamperingSafetyNetAttestationMethodsm5)
        SafetyNetAttestationA.append(AntiTamperingSafetyNetAttestationMethodsm10)
        
        #InstallerVerification
        isInstallerVerificationA = 0
        isInstallerVerificationB = 0
        isInstallerVerificationD = 0
            
        for i in range(len(InstallerVerificationA)):
            if(InstallerVerificationA[i].lower() in JAVA_strings_summary):
                isInstallerVerificationA = 1
                print("InstallerVerificationA[i]",InstallerVerificationA[i])
                break
                        
        for i in range(len(InstallerVerificationB)):
            if(InstallerVerificationB[i].lower() in methods_summary):
                isInstallerVerificationB = 1
                print("InstallerVerificationB[i]",InstallerVerificationB[i])
                break
        
        for i in range(len(InstallerVerificationD)):
            if(InstallerVerificationD[i].lower() in JAVA_strings_summary):
                isInstallerVerificationD = 1
                print("InstallerVerificationD[i]",InstallerVerificationD[i])
                break
        
        if(isInstallerVerificationA and isInstallerVerificationB or isInstallerVerificationC or isInstallerVerificationD):
            InstallerVerification = 1
            #if(isInstallerVerificationC or isInstallerVerificationD):
            #    InstallerVerificationNEW = 1
            if(isInstallerVerificationA and isInstallerVerificationB):
                InstallerVerificationOLD = 1
            
            
        #CodeIntegrityChecking
        isCodeIntegrityCheckingA = 0
        isCodeIntegrityCheckingB = 0
        isCodeIntegrityCheckingC = 0
        isCodeIntegrityCheckingD = 0
        isCodeIntegrityCheckingE = 0
        isCodeIntegrityCheckingF = 1
            
        for i in range(len(CodeIntegrityCheckingA)):
            if(CodeIntegrityCheckingA[i].lower() in strings_summary):
                isCodeIntegrityCheckingA = 1
                print("CodeIntegrityCheckingA[i]",CodeIntegrityCheckingA[i])
                break
            
        for i in range(len(CodeIntegrityCheckingB)):
            if(CodeIntegrityCheckingB[i].lower() in methods_summary):
                isCodeIntegrityCheckingB = 1
                print("CodeIntegrityCheckingB[i]",CodeIntegrityCheckingB[i])
                break
            
        for i in range(len(CodeIntegrityCheckingC)):
            if(CodeIntegrityCheckingC[i].lower() in strings_summary):
                print("CodeIntegrityCheckingC[i]",CodeIntegrityCheckingC[i])
                isCodeIntegrityCheckingC = 1
                break
            
        for i in range(len(CodeIntegrityCheckingD)):
            if(CodeIntegrityCheckingD[i].lower() in methods_summary):
                isCodeIntegrityCheckingD = 1
                print("CodeIntegrityCheckingD[i]",CodeIntegrityCheckingD[i])
                break
            
        for i in range(len(CodeIntegrityCheckingE)):
            if(CodeIntegrityCheckingE[i].lower() in methods_summary):
                isCodeIntegrityCheckingE = 1
                print("CodeIntegrityCheckingE[i]",CodeIntegrityCheckingE[i])
                break
        

        for i in range(len(CodeIntegrityCheckingF)):
            if(CodeIntegrityCheckingF[i].lower() not in methods_summary):
                isCodeIntegrityCheckingF = 0
                print("CodeIntegrityCheckingF[i]",CodeIntegrityCheckingF[i])
                break        
                
        if(isCodeIntegrityCheckingA and (isCodeIntegrityCheckingB or isCodeIntegrityCheckingC) and (isCodeIntegrityCheckingD or isCodeIntegrityCheckingE or isCodeIntegrityCheckingF)):
            CodeIntegrityChecking = 1
            
        
        if(isCodeIntegrityCheckingA and (isCodeIntegrityCheckingB or isCodeIntegrityCheckingC) and (isCodeIntegrityCheckingD or isCodeIntegrityCheckingE)):
            CodeIntegrityCheckingOLD = 1
        
        #print("isCodeIntegrityCheckingA",isCodeIntegrityCheckingA)
        #print("isCodeIntegrityCheckingB",isCodeIntegrityCheckingB)
        #print("isCodeIntegrityCheckingC",isCodeIntegrityCheckingC)
        #print("isCodeIntegrityCheckingD",isCodeIntegrityCheckingD)
        #print("isCodeIntegrityCheckingE",isCodeIntegrityCheckingE)
        
        
        
        #SignatureChecking
        isSignatureCheckingA = 0
        isSignatureCheckingB = 1
        isSignatureCheckingC = 0
        isSignatureCheckingD = 0
        isSignatureCheckingE = 1
        isSignatureCheckingF = 0
           
        for i in range(len(SignatureCheckingA)):
            if(SignatureCheckingA[i].lower() in strings_summary):
                isSignatureCheckingA = 1
                print("SignatureCheckingA[i]",SignatureCheckingA[i])
                break
            
        for i in range(len(SignatureCheckingB)):
            if(SignatureCheckingB[i].lower() not in methods_summary):
                isSignatureCheckingB = 0
                print("SignatureCheckingB[i]",SignatureCheckingB[i])
                break
                
        for i in range(len(SignatureCheckingC)):
            if(SignatureCheckingC[i].lower() in methods_summary):
                isSignatureCheckingC = 1
                print("SignatureCheckingC[i]",SignatureCheckingC[i])
                break
            
        for i in range(len(SignatureCheckingD)):
            if(SignatureCheckingD[i].lower() in strings_summary):
                
                isSignatureCheckingD = 1
                print("SignatureCheckingD[i]",SignatureCheckingD[i])
                break
            
        for i in range(len(SignatureCheckingE)):
            if(SignatureCheckingE[i].lower() not in NATIVE_strings_summary):
                isSignatureCheckingE = 0
                print("SignatureCheckingE[i]",SignatureCheckingE[i])
                break
        
        if(isV2 or isV3 or isV4):
            isSignatureCheckingF = 1
        #print("isSignatureCheckingA",isSignatureCheckingA)
        #print("isSignatureCheckingB",isSignatureCheckingB)
        #print("isSignatureCheckingC",isSignatureCheckingC)
        #print("isSignatureCheckingD",isSignatureCheckingD)
        #print("isSignatureCheckingE",isSignatureCheckingE)
        #print("isSignatureCheckingF",isSignatureCheckingF)
        
        if((isSignatureCheckingA and isSignatureCheckingB and (isSignatureCheckingC or isSignatureCheckingD)) or isSignatureCheckingE or isSignatureCheckingF):
            SignatureChecking = 1
            #if(isSignatureCheckingF):
            #    SignatureCheckingNEW = 1
            if(((isSignatureCheckingA and isSignatureCheckingB and (isSignatureCheckingC or isSignatureCheckingD)) or isSignatureCheckingE)):
                SignatureCheckingOLD = 1
          
        #Anti-Hooking
        #Xposed
        isXposedA = 0
        isXposedB = 0
        isXposedC = 0
        isXposedD = 0
        isXposedE = 0
        isXposedF = 0
          
        for i in range(len(XposedA)):
            if(XposedA[i].lower() in strings_summary):
                isXposedA = 1
                print("XposedA[i]",XposedA[i])
                break
        '''  
        for i in range(len(XposedB)):
            if(XposedB[i].lower() in strings_summary):
                isXposedB = 1
                break
          
        for i in range(len(XposedC)):
            if(XposedC[i].lower() in strings_summary):
                isXposedC = 1
                break
          
        for i in range(len(XposedD)):
            if(XposedD[i].lower() in methods_summary):
                isXposedD = 1
                break
          
        for i in range(len(XposedE)):
            if(XposedE[i].lower() in methods_summary):
                isXposedE = 1
                break
        '''   
        for i in range(len(XposedF)):
            if(XposedF[i].lower() in strings_summary):
                isXposedF = 1
                print("XposedF[i]",XposedF[i])
                break
              
        if(isXposedA  or isXposedF):
            Xposed = 1
            #if(AntiHookingStringsJavas6 in strings_summary or AntiHookingStringsNatives6 in strings_summary or AntiHookingStringsNatives16 in strings_summary):
            #    XposedNEW = 1

        XposedA.remove(AntiHookingStringsJavas6)
        XposedF.remove(AntiHookingStringsNatives6)
        XposedF.remove(AntiHookingStringsNatives16)
        
        
        isXposedA = 0
        isXposedB = 0
        isXposedC = 0
        isXposedD = 0
        isXposedE = 0
        isXposedF = 0
          
        for i in range(len(XposedA)):
            if(XposedA[i].lower() in strings_summary):
                isXposedA = 1
                break
        '''  
        for i in range(len(XposedB)):
            if(XposedB[i].lower() in strings_summary):
                isXposedB = 1
                break
          
        for i in range(len(XposedC)):
            if(XposedC[i].lower() in strings_summary):
                isXposedC = 1
                break
          
        for i in range(len(XposedD)):
            if(XposedD[i].lower() in methods_summary):
                isXposedD = 1
                break
          
        for i in range(len(XposedE)):
            if(XposedE[i].lower() in methods_summary):
                isXposedE = 1
                break
        '''   
        for i in range(len(XposedF)):
            if(XposedF[i].lower() in strings_summary):
                isXposedF = 1
                break
              
        if(isXposedA  or isXposedF):
            XposedOLD = 1
            
        
        XposedA.append(AntiHookingStringsJavas6)
        XposedF.append(AntiHookingStringsNatives6)
        XposedF.append(AntiHookingStringsNatives16)
        
        
        #Frida
        isFridaA = 0
        isFridaB = 0
        isFridaC = 0
        isFridaD = 0
        isFridaE = 0
        isFridaF = 0
          
        for i in range(len(FridaA)):
            if(FridaA[i].lower() in strings_summary):
                isFridaA = 1
                print("FridaA[i]",FridaA[i])
                break
        
        '''
            
        for i in range(len(FridaB)):
            if(FridaB[i].lower() in strings_summary):
                isFridaB = 1
                break
            
        for i in range(len(FridaC)):
            if(FridaC[i].lower() in strings_summary):
                isFridaC = 1
                break
            
        for i in range(len(FridaD)):
            if(FridaD[i].lower() in methods_summary):
                isFridaD = 1
                break
            
        for i in range(len(FridaE)):
            if(FridaE[i].lower() in methods_summary):
                isFridaE = 1
                break
        '''    
        for i in range(len(FridaF)):
            if(FridaF[i].lower() in strings_summary):
                isFridaF = 1
                break
                
        if(isFridaA  or isFridaF):
            Frida = 1
            print("FridaF[i]",FridaF[i])
            #if(AntiHookingStringsNatives17 in strings_summary or AntiHookingStringsNatives18 in strings_summary or AntiHookingStringsNatives19 in strings_summary):
            #    FridaNEW = 1
        
        FridaF.remove(AntiHookingStringsNatives17)
        FridaF.remove(AntiHookingStringsNatives18)
        FridaF.remove(AntiHookingStringsNatives19)
        
        
        isFridaA = 0
        isFridaB = 0
        isFridaC = 0
        isFridaD = 0
        isFridaE = 0
        isFridaF = 0
          
        for i in range(len(FridaA)):
            if(FridaA[i].lower() in strings_summary):
                isFridaA = 1
                print("FridaA[i]",FridaA[i])
                break
        '''  
        for i in range(len(FridaB)):
            if(FridaB[i].lower() in strings_summary):
                isFridaB = 1
                print("FridaB[i]",FridaB[i])
                break
            
        for i in range(len(FridaC)):
            if(FridaC[i].lower() in strings_summary):
                isFridaC = 1
                print("FridaC[i]",FridaC[i])
                break
            
        for i in range(len(FridaD)):
            if(FridaD[i].lower() in methods_summary):
                isFridaD = 1
                print("FridaD[i]",FridaD[i])
                break
            
        for i in range(len(FridaE)):
            if(FridaE[i].lower() in methods_summary):
                isFridaE = 1
                print("FridaE[i]",FridaE[i])
                break
        '''    
        for i in range(len(FridaF)):
            if(FridaF[i].lower() in strings_summary):
                isFridaF = 1
                print("FridaF[i]",FridaF[i])
                break
                
        if(isFridaA  or isFridaF):
            FridaOLD = 1
        
        
        FridaF.append(AntiHookingStringsNatives17)
        FridaF.append(AntiHookingStringsNatives18)
        FridaF.append(AntiHookingStringsNatives19)
        
        
        #Root Detection
        #CheckInstalledPackages
        isCheckInstalledPackagesA = 0
        isCheckInstalledPackagesB = 0
        isCheckInstalledPackagesC = 0
        '''
        for i in range(len(CheckInstalledPackagesA)):
            if((CheckInstalledPackagesA[i].lower() in strings_summary) ):
                isCheckInstalledPackagesA = 1
                break
        '''
        for i in range(len(CheckInstalledPackagesB)):
            if((CheckInstalledPackagesB[i].lower() in strings_summary) ):
                isCheckInstalledPackagesB = 1
                print("CheckInstalledPackagesB[i]",CheckInstalledPackagesB[i])
                break
            
        for i in range(len(CheckInstalledPackagesC)):
            for s in strings_summary:
                if CheckInstalledPackagesC[i].lower() in s:
                    isCheckInstalledPackagesC = 1
                    if(s.endswith("supersubscriberinfoclass") or s.endswith("thirdparty.superuser")):
                        isCheckInstalledPackagesC = 0
                        break
                    print("CheckInstalledPackagesC[i]",CheckInstalledPackagesC[i])
                    print("S",s)
                    break
            if isCheckInstalledPackagesC == 1:
                break

            
        if(isCheckInstalledPackagesB or isCheckInstalledPackagesC):
            CheckInstalledPackages = 1
        
        #CheckProcessesServices
        isCheckProcessesServicesA = 0
        isCheckProcessesServicesB = 0
        isCheckProcessesServicesC = 0
        isCheckProcessesServicesD = 0
        
        for i in range(len(CheckProcessesServicesA)):
            if(CheckProcessesServicesA[i].lower() in classes_summary):
                isCheckProcessesServicesA = 1
                print("CheckProcessesServicesA[i]",CheckProcessesServicesA[i])
                break
        
        for i in range(len(CheckProcessesServicesB)):
            if(CheckProcessesServicesB[i].lower() in methods_summary):
                isCheckProcessesServicesB = 1
                print("CheckProcessesServicesB[i]",CheckProcessesServicesB[i])
                break
        
        if("Landroid/content/Context.getSystemService".lower() in methods_summary):
            isCheckProcessesServicesB = 0
            print("isCheckProcessesServicesB = 0,Landroid/content/Context.getSystemService")
        
        for i in range(len(CheckProcessesServicesC)):
            if(CheckProcessesServicesC[i].lower() in strings_summary):
                isCheckProcessesServicesC = 1
                print("CheckProcessesServicesC[i]",CheckProcessesServicesC[i])
                break
        '''
        for i in range(len(CheckProcessesServicesD)):
            if(CheckProcessesServicesD[i].lower() in NATIVE_strings_summary):
                isCheckProcessesServicesD = 1
                break
        '''    
        if((isCheckProcessesServicesA and isCheckProcessesServicesB and isCheckProcessesServicesC)):
            CheckProcessesServices = 1
        CheckProcessesServices = 0
        #CheckShellCommandsExecution
        isCheckShellCommandsExecutionA = 0
        isCheckShellCommandsExecutionB = 0
        isCheckShellCommandsExecutionC = 0
        isCheckShellCommandsExecutionD = 0
        isCheckShellCommandsExecutionE = 1
        '''
        for i in range(len(CheckShellCommandsExecutionA)):
            if((CheckShellCommandsExecutionA[i].lower() in strings_summary) ):
                isCheckShellCommandsExecutionA = 1
                break
                
                
        count = 0
        for i in range(len(CheckShellCommandsExecutionB)):
            if((CheckShellCommandsExecutionB[i].lower() in strings_summary) ):
                count += 1
                if(count >= 2):
                    isCheckShellCommandsExecutionB = 1
                    break 
        
        '''
        
        for i in range(len(CheckShellCommandsExecutionC)):
            if((CheckShellCommandsExecutionC[i].lower() in strings_summary) ): 
                print("CheckShellCommandsExecutionC[i]",CheckShellCommandsExecutionC[i])
                isCheckShellCommandsExecutionC = 1
                break
        
        count = 0
        for i in range(len(checkSu)):
            if((checkSu[i].lower() in strings_summary) ):
                count += 1
                print("checkSu[i]",checkSu[i])
                if(count >= 3):
                    isCheckShellCommandsExecutionC = 1
                    break
        
        for i in range(len(CheckShellCommandsExecutionD)):
            if((CheckShellCommandsExecutionD[i].lower() in strings_summary) ):
                isCheckShellCommandsExecutionD = 1
                print("CheckShellCommandsExecutionD[i]",CheckShellCommandsExecutionD[i])
                break
        
        
        for i in range(len(CheckShellCommandsExecutionE)):
            if((CheckShellCommandsExecutionE[i].lower() not in strings_summary) ):
                isCheckShellCommandsExecutionE = 0
                print("CheckShellCommandsExecutionE[i]",CheckShellCommandsExecutionE[i])
                break
                
        if(isCheckShellCommandsExecutionC or isCheckShellCommandsExecutionD or isCheckShellCommandsExecutionE):
            CheckShellCommandsExecution = 1
        if("Ljava/lang/Runtime.exec".lower() in methods_summary and "su" in strings_summary and "shell" in strings_summary):
            CheckShellCommandsExecution = 1
            print("exec su")
        if("/system/xbin/which" in strings_summary and "su" in strings_summary):
            CheckShellCommandsExecution = 1
            print("/system/xbin/which + su")
        if("Ljava/lang/System.getenv".lower() in methods_summary and "path" in strings_summary and ("su" in strings_summary or "/su" in strings_summary)):
            CheckShellCommandsExecution = 1
            print("Ljava/lang/System.getenv + path + su")
        #CheckBuildTagandSystemProperties
        isCheckBuildTagandSystemPropertiesA = 1
        isCheckBuildTagandSystemPropertiesB = 1
        isCheckBuildTagandSystemPropertiesC = 0
        isCheckBuildTagandSystemPropertiesD = 1
        isCheckBuildTagandSystemPropertiesE = 0
        isCheckBuildTagandSystemPropertiesF = 0
        isCheckBuildTagandSystemPropertiesG = 1
        isCheckBuildTagandSystemPropertiesH = 1
        
        
        for i in range(len(CheckBuildTagandSystemPropertiesA)):
            if(CheckBuildTagandSystemPropertiesA[i].lower() not in strings_summary):
                isCheckBuildTagandSystemPropertiesA = 0
                print("CheckBuildTagandSystemPropertiesA[i] NOT IN",CheckBuildTagandSystemPropertiesA[i])
                break
        
        for i in range(len(CheckBuildTagandSystemPropertiesB)):
            if(CheckBuildTagandSystemPropertiesB[i].lower() not in strings_summary):
                isCheckBuildTagandSystemPropertiesB = 0
                print("CheckBuildTagandSystemPropertiesB[i] NOT IN",CheckBuildTagandSystemPropertiesB[i])
                break
        
        for i in range(len(CheckBuildTagandSystemPropertiesC)):
            if(CheckBuildTagandSystemPropertiesC[i].lower() in strings_summary):
                isCheckBuildTagandSystemPropertiesC = 1
                print("CheckBuildTagandSystemPropertiesC[i]",CheckBuildTagandSystemPropertiesC[i])
                break
        
        
        for i in range(len(CheckBuildTagandSystemPropertiesD)):
            if(CheckBuildTagandSystemPropertiesD[i].lower() not in strings_summary):
                isCheckBuildTagandSystemPropertiesD = 0
                print("CheckBuildTagandSystemPropertiesD[i] NOT IN",CheckBuildTagandSystemPropertiesD[i])
                break
        
        
        for i in range(len(CheckBuildTagandSystemPropertiesE)):
            if(CheckBuildTagandSystemPropertiesE[i].lower() in methods_summary):
                isCheckBuildTagandSystemPropertiesE = 1
                print("CheckBuildTagandSystemPropertiesE[i]",CheckBuildTagandSystemPropertiesE[i])
                break
        

        for i in range(len(CheckBuildTagandSystemPropertiesF)):
            if(CheckBuildTagandSystemPropertiesF[i].lower() in strings_summary):
                isCheckBuildTagandSystemPropertiesF = 1
                print("CheckBuildTagandSystemPropertiesF[i]",CheckBuildTagandSystemPropertiesF[i])
                break    
                
                
        for i in range(len(CheckBuildTagandSystemPropertiesG)):
            if(CheckBuildTagandSystemPropertiesG[i].lower() not in strings_summary):
                isCheckBuildTagandSystemPropertiesG = 0
                print("CheckBuildTagandSystemPropertiesG[i] NOT IN",CheckBuildTagandSystemPropertiesG[i])
                break
        
        for i in range(len(CheckBuildTagandSystemPropertiesH)):
            if(CheckBuildTagandSystemPropertiesH[i].lower() not in strings_summary):
                isCheckBuildTagandSystemPropertiesH = 0
                print("CheckBuildTagandSystemPropertiesH[i] NOT IN",CheckBuildTagandSystemPropertiesH[i])
                break
        
        if(isCheckBuildTagandSystemPropertiesA or isCheckBuildTagandSystemPropertiesB or isCheckBuildTagandSystemPropertiesC or isCheckBuildTagandSystemPropertiesD or ((isCheckBuildTagandSystemPropertiesE or isCheckBuildTagandSystemPropertiesF) and isCheckBuildTagandSystemPropertiesG) or isCheckBuildTagandSystemPropertiesH):
            CheckBuildTagandSystemProperties = 1
            
        
        #DirectoryPermissions
        isDirectoryPermissionsA = 0
        isDirectoryPermissionsB = 0
        
        count = 0
        for i in range(len(DirectoryPermissionsA)):
            if((DirectoryPermissionsA[i].lower() in strings_summary) ):
                count += 1
                print("DirectoryPermissionsA[i]",DirectoryPermissionsA[i])
                if(count >= 3):
                    isDirectoryPermissionsA = 1
                    break
        #print(count,"count")        
        for i in range(len(DirectoryPermissionsB)):
            if((DirectoryPermissionsB[i].lower() in strings_summary) ):
                isDirectoryPermissionsB = 1
                print("DirectoryPermissionsB[i]",DirectoryPermissionsB[i])
                
        #print("mount" in strings_summary)
        
        if(isDirectoryPermissionsA and isDirectoryPermissionsB):
            DirectoryPermissions = 1

        
        #加入判别式 在上方
        
        #Anti-Debugging summary
        if(UsingTimingCheck or UsingSignals or UsingTracerPID or PreemptPtraceAPI or \
           DebuggerRelatedValue  or BreakpointsetStructure or AlteringDebuggerMemory or AntiDump):
            AntiDebugging = 1
            
        DebugSub = UsingTimingCheck + UsingSignals + UsingTracerPID + PreemptPtraceAPI + DebuggerRelatedValue + \
                   BreakpointsetStructure + AlteringDebuggerMemory + AntiDump
        
        #Anti-Emulator summary
        if(DeviceIdentifier or CurrentBuild or TelephonyManager or HardwareComponents or EmulatorRelatedStringsAndSystemProperties or \
           SensorInformation or ContextSwitchBasedDetection or TranslationBlockCacheBasedDetection or \
           MisalignedVectorizationBasedDetection or UpdatestoExecutionStateBits ):
            AntiEmulator = 1
            
        
        if(FilePath or ShareUID or PortDetection or CodeInjectionAndHooking):
            AntiAppLevelVirtualization = 1
        


        EnvironmentSub = DeviceIdentifier + CurrentBuild + TelephonyManager + HardwareComponents + EmulatorRelatedStringsAndSystemProperties +\
                         SensorInformation + ContextSwitchBasedDetection + TranslationBlockCacheBasedDetection+ MisalignedVectorizationBasedDetection+\
                         FilePath + ShareUID + PortDetection + CodeInjectionAndHooking


    
        
        if(AntiEmulator or AntiAppLevelVirtualization):
            AntiVirtualEnvironment = 1
        
        #Anti-Tampering summary
        if(SafetyNetAttestation or InstallerVerification or CodeIntegrityChecking or SignatureChecking):
            AntiTampering = 1
        
        TamperSub = SafetyNetAttestation+InstallerVerification+CodeIntegrityChecking+SignatureChecking
        
        
        #Anti-Hooking summary
        if(Xposed or Frida):
            AntiHooking = 1
            
        HookSub = Xposed + Frida
        
        
        #Root Detection summary
        if(CheckInstalledPackages  or CheckShellCommandsExecution or CheckBuildTagandSystemProperties or \
           DirectoryPermissions):
            RootDetection = 1
            
        RootSub = CheckInstalledPackages + CheckShellCommandsExecution + CheckBuildTagandSystemProperties + DirectoryPermissions
        
        
        SumSub = DebugSub + EnvironmentSub + TamperSub + HookSub + RootSub
        SumMajor = AntiDebugging + AntiVirtualEnvironment + AntiTampering + AntiHooking + RootDetection
        
    #except:
        #print("判断反分析标志出错")

        #print("generatejson.GenerateSimpleJsonByTemplate")
        #为这个apk/dex生成两个模板
        generatejson.GenerateSimpleJsonByTemplate("./output" + currentTime + "/simple/",sha256)
        generatejson.GenerateDetailedJsonByTemplate("./output" + currentTime + "/detailed/",sha256)



        #print("simpleTemplate = ")
        #读取Json文件并写入分析结果
        simpleTemplate = ""    
        with open("./output" + currentTime + "/simple/"+sha256+"_simple.json", 'r') as f:
            simpleTemplate = json.load(f)
            simpleTemplate["Anti-Debugging"] = AntiDebugging
            simpleTemplate["Anti Virtual Environment"] = AntiVirtualEnvironment
            simpleTemplate["Anti-Tampering"] = AntiTampering
            simpleTemplate["Anti-Hooking"] = AntiHooking
            simpleTemplate["Root Detection"] = RootDetection
        json.dump(simpleTemplate,open("./output" + currentTime + "/simple/"+sha256+"_simple.json",'w'),indent=4)
        
        simpleTemplate = ""
        with open("./output" + currentTime + "/summary_simple.json", 'r') as f:
            simpleTemplate = json.load(f)
            simpleTemplate["Anti-Debugging"] = simpleTemplate["Anti-Debugging"] + AntiDebugging
            simpleTemplate["Anti Virtual Environment"] = simpleTemplate["Anti Virtual Environment"] + AntiVirtualEnvironment
            simpleTemplate["Anti-Tampering"] = simpleTemplate["Anti-Tampering"] + AntiTampering
            simpleTemplate["Anti-Hooking"] = simpleTemplate["Anti-Hooking"] + AntiHooking
            simpleTemplate["Root Detection"] = simpleTemplate["Root Detection"] + RootDetection
        json.dump(simpleTemplate,open("./output" + currentTime + "/summary_simple.json",'w'),indent=4)    
        
        
        detailedTemplate = ""
        with open("./output" + currentTime + "/detailed/"+sha256+"_detailed.json", 'r') as f:
            detailedTemplate = json.load(f)
            #detailedTemplate["Anti-Debugging"]["Native Code Debugger"]["Hash Value Comparison"] = HashValueComparison
            detailedTemplate["Anti-Debugging"]["Native Code Debugger"]["Using Timing Check"] = UsingTimingCheck
            detailedTemplate["Anti-Debugging"]["Native Code Debugger"]["Using Signals"] = UsingSignals
            detailedTemplate["Anti-Debugging"]["Native Code Debugger"]["Using TracerPID"] = UsingTracerPID
            detailedTemplate["Anti-Debugging"]["Native Code Debugger"]["Preempt Ptrace API"] = PreemptPtraceAPI
            #detailedTemplate["Anti-Debugging"]["Native Code Debugger"]["Breakpoint Instruction Detection"] = BreakpointInstructionDetection
            detailedTemplate["Anti-Debugging"]["Native Code Debugger"]["Anti Dump"] = AntiDump
            
            detailedTemplate["Anti-Debugging"]["JDWP Debugger"]["Debugger Related Value"] = DebuggerRelatedValue
            detailedTemplate["Anti-Debugging"]["JDWP Debugger"]["Debugger Related Value OLD"] = DebuggerRelatedValueOLD
            #detailedTemplate["Anti-Debugging"]["JDWP Debugger"]["Debugger Related Value NEW"] = DebuggerRelatedValueNEW
            #detailedTemplate["Anti-Debugging"]["JDWP Debugger"]["Number of Breakpoints"] = NumberofBreakpoints
            detailedTemplate["Anti-Debugging"]["JDWP Debugger"]["Breakpointset Structure"] = BreakpointsetStructure
            #detailedTemplate["Anti-Debugging"]["JDWP Debugger"]["Modify JdwpState/JdwpTransport"] = ModifyJdwpStateJdwpTransport
            detailedTemplate["Anti-Debugging"]["JDWP Debugger"]["Altering Debugger Memory"] = AlteringDebuggerMemory
            detailedTemplate["Anti-Debugging"]["JDWP Debugger"]["Altering Debugger Memory OLD"] = AlteringDebuggerMemoryOLD
            
            detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Static"]["Device Identifier"] = DeviceIdentifier
            detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Static"]["Device Identifier OLD"] = DeviceIdentifierOLD
            detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Static"]["Current Build"] = CurrentBuild
            detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Static"]["Current Build OLD"] = CurrentBuildOLD
            detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Static"]["Telephony Manager"] = TelephonyManager
            detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Static"]["Hardware Components"] =HardwareComponents
            detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Static"]["Emulator Related Strings and System Properties"] = EmulatorRelatedStringsAndSystemProperties
            detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Static"]["Emulator Related Strings and System Properties OLD"] = EmulatorRelatedStringsAndSystemPropertiesOLD
            #detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Static"]["Emulator Related Strings and System Properties NEW"] = EmulatorRelatedStringsAndSystemPropertiesNEW
            #detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Static"]["Presence of Other Apps"] = PresenceofOtherApps
            
            detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Dynamic"]["Sensor Information"] = SensorInformation
            detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Dynamic"]["CPU Performance"]["Context Switch Based Detection"] = ContextSwitchBasedDetection
            detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Dynamic"]["CPU Performance"]["Translation Block Cache Based Detection"] = TranslationBlockCacheBasedDetection
            detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Dynamic"]["CPU Performance"]["Misaligned Vectorization Based Detection"] = MisalignedVectorizationBasedDetection
            detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Dynamic"]["CPU Performance"]["Updates to Execution State Bits"] = UpdatestoExecutionStateBits
            #detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Dynamic"]["CPU Performance"]["Incomplete Sanitization for Undefined Instructions"] = IncompleteSanitizationforUndefinedInstructions
            #detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Dynamic"]["Graphical Performance"] = GraphicalPerformance
            
            detailedTemplate["Anti Virtual Environment"]["Anti App-Level Virtualization"]["File Path"] = FilePath
            detailedTemplate["Anti Virtual Environment"]["Anti App-Level Virtualization"]["Share UID"] = ShareUID
            detailedTemplate["Anti Virtual Environment"]["Anti App-Level Virtualization"]["Port Detection"] = PortDetection
            detailedTemplate["Anti Virtual Environment"]["Anti App-Level Virtualization"]["Code Injection And Hooking"] = CodeInjectionAndHooking
            
            detailedTemplate["Anti-Tampering"]["SafetyNet Attestation"] = SafetyNetAttestation
            detailedTemplate["Anti-Tampering"]["SafetyNet Attestation OLD"] = SafetyNetAttestationOLD
            #detailedTemplate["Anti-Tampering"]["SafetyNet Attestation NEW"] = SafetyNetAttestationNEW
            detailedTemplate["Anti-Tampering"]["Installer Verification"] = InstallerVerification
            detailedTemplate["Anti-Tampering"]["Installer Verification OLD"] = InstallerVerificationOLD
            #detailedTemplate["Anti-Tampering"]["Installer Verification NEW"] = InstallerVerificationNEW
            detailedTemplate["Anti-Tampering"]["Code Integrity Checking"] = CodeIntegrityChecking
            detailedTemplate["Anti-Tampering"]["Code Integrity Checking OLD"] = CodeIntegrityCheckingOLD
            #detailedTemplate["Anti-Tampering"]["Code Integrity Checking NEW"] = CodeIntegrityCheckingNEW
            detailedTemplate["Anti-Tampering"]["Signature Checking"] = SignatureChecking
            detailedTemplate["Anti-Tampering"]["Signature Checking OLD"] = SignatureCheckingOLD
            #detailedTemplate["Anti-Tampering"]["Signature Checking NEW"] = SignatureCheckingNEW
            
            detailedTemplate["Anti-Hooking"]["Xposed"] = Xposed
            detailedTemplate["Anti-Hooking"]["Xposed OLD"] = XposedOLD
            #detailedTemplate["Anti-Hooking"]["Xposed NEW"] = XposedNEW
            detailedTemplate["Anti-Hooking"]["Frida"] = Frida
            detailedTemplate["Anti-Hooking"]["Frida OLD"] = FridaOLD
            #detailedTemplate["Anti-Hooking"]["Frida NEW"] = FridaNEW
            
            detailedTemplate["Root Detection"]["Check Installed Packages"] = CheckInstalledPackages
            #detailedTemplate["Root Detection"]["Check Processes/Services"] = CheckProcessesServices
            detailedTemplate["Root Detection"]["Check Shell Commands Execution"] = CheckShellCommandsExecution
            detailedTemplate["Root Detection"]["Check Build Tag and System Properties"] = CheckBuildTagandSystemProperties
            detailedTemplate["Root Detection"]["Directory Permissions"] = DirectoryPermissions
            
    
            detailedTemplate["Anti-Debugging"]["DebugSub"] = DebugSub
            detailedTemplate["Anti Virtual Environment"]["EnvironmentSub"] = EnvironmentSub
            detailedTemplate["Anti-Tampering"]["TamperSub"] = TamperSub
            detailedTemplate["Anti-Hooking"]["HookSub"] = HookSub
            detailedTemplate["Root Detection"]["RootSub"] = RootSub
            
            detailedTemplate["Sum"]["Sub"] = SumSub
            detailedTemplate["Sum"]["Major"] = SumMajor
            
        json.dump(detailedTemplate,open("./output" + currentTime + "/detailed/"+sha256+"_detailed.json",'w'),indent=4)
        #print("/summary_detailed.json")
        detailedTemplate = ""
        with open("./output" + currentTime + "/summary_detailed.json", 'r') as f:
            detailedTemplate = json.load(f)
            #print("11111111111111111111111")
            #detailedTemplate["Anti-Debugging"]["Native Code Debugger"]["Hash Value Comparison"] = detailedTemplate["Anti-Debugging"]["Native Code Debugger"]["Hash Value Comparison"] + HashValueComparison
            detailedTemplate["Anti-Debugging"]["Native Code Debugger"]["Using Timing Check"] = detailedTemplate["Anti-Debugging"]["Native Code Debugger"]["Using Timing Check"] + UsingTimingCheck
            detailedTemplate["Anti-Debugging"]["Native Code Debugger"]["Using Signals"] = detailedTemplate["Anti-Debugging"]["Native Code Debugger"]["Using Signals"] + UsingSignals
            detailedTemplate["Anti-Debugging"]["Native Code Debugger"]["Using TracerPID"] = detailedTemplate["Anti-Debugging"]["Native Code Debugger"]["Using TracerPID"] + UsingTracerPID
            detailedTemplate["Anti-Debugging"]["Native Code Debugger"]["Preempt Ptrace API"] = detailedTemplate["Anti-Debugging"]["Native Code Debugger"]["Preempt Ptrace API"] + PreemptPtraceAPI
            #detailedTemplate["Anti-Debugging"]["Native Code Debugger"]["Breakpoint Instruction Detection"] = detailedTemplate["Anti-Debugging"]["Native Code Debugger"]["Breakpoint Instruction Detection"] + BreakpointInstructionDetection
            detailedTemplate["Anti-Debugging"]["Native Code Debugger"]["Anti Dump"] = detailedTemplate["Anti-Debugging"]["Native Code Debugger"]["Anti Dump"] + AntiDump
            #print("222222222222222222222222")
            detailedTemplate["Anti-Debugging"]["JDWP Debugger"]["Debugger Related Value"] = detailedTemplate["Anti-Debugging"]["JDWP Debugger"]["Debugger Related Value"] + DebuggerRelatedValue
            detailedTemplate["Anti-Debugging"]["JDWP Debugger"]["Debugger Related Value OLD"] = detailedTemplate["Anti-Debugging"]["JDWP Debugger"]["Debugger Related Value OLD"] + DebuggerRelatedValueOLD
            #detailedTemplate["Anti-Debugging"]["JDWP Debugger"]["Debugger Related Value NEW"] = detailedTemplate["Anti-Debugging"]["JDWP Debugger"]["Debugger Related Value NEW"] + DebuggerRelatedValueNEW
            #detailedTemplate["Anti-Debugging"]["JDWP Debugger"]["Number of Breakpoints"] = detailedTemplate["Anti-Debugging"]["JDWP Debugger"]["Number of Breakpoints"] + NumberofBreakpoints
            detailedTemplate["Anti-Debugging"]["JDWP Debugger"]["Breakpointset Structure"] = detailedTemplate["Anti-Debugging"]["JDWP Debugger"]["Breakpointset Structure"] + BreakpointsetStructure
            #detailedTemplate["Anti-Debugging"]["JDWP Debugger"]["Modify JdwpState/JdwpTransport"] = detailedTemplate["Anti-Debugging"]["JDWP Debugger"]["Modify JdwpState/JdwpTransport"] + ModifyJdwpStateJdwpTransport
            detailedTemplate["Anti-Debugging"]["JDWP Debugger"]["Altering Debugger Memory"] = detailedTemplate["Anti-Debugging"]["JDWP Debugger"]["Altering Debugger Memory"] + AlteringDebuggerMemory
            #print("33333333333333333333")
            detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Sum"] = detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Sum"] + AntiEmulator
            detailedTemplate["Anti Virtual Environment"]["Anti App-Level Virtualization"]["Sum"] = detailedTemplate["Anti Virtual Environment"]["Anti App-Level Virtualization"]["Sum"] + AntiAppLevelVirtualization
            detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Static"]["Device Identifier"] = detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Static"]["Device Identifier"] + DeviceIdentifier
            detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Static"]["Device Identifier OLD"] = detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Static"]["Device Identifier OLD"] + DeviceIdentifierOLD
            detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Static"]["Current Build"] = detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Static"]["Current Build"] + CurrentBuild
            detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Static"]["Current Build OLD"] = detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Static"]["Current Build OLD"] + CurrentBuildOLD
            detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Static"]["Telephony Manager"] = detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Static"]["Telephony Manager"] + TelephonyManager
            detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Static"]["Hardware Components"] =detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Static"]["Hardware Components"] + HardwareComponents
            detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Static"]["Emulator Related Strings and System Properties"] = detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Static"]["Emulator Related Strings and System Properties"] + EmulatorRelatedStringsAndSystemProperties
            detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Static"]["Emulator Related Strings and System Properties OLD"] = detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Static"]["Emulator Related Strings and System Properties OLD"] + EmulatorRelatedStringsAndSystemPropertiesOLD
            #detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Static"]["Emulator Related Strings and System Properties NEW"] = detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Static"]["Emulator Related Strings and System Properties NEW"] + EmulatorRelatedStringsAndSystemPropertiesNEW
            #detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Static"]["Presence of Other Apps"] = detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Static"]["Presence of Other Apps"] + PresenceofOtherApps
            #print("44444444444444444444444")
            detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Dynamic"]["Sensor Information"] = detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Dynamic"]["Sensor Information"] + SensorInformation
            detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Dynamic"]["CPU Performance"]["Context Switch Based Detection"] = detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Dynamic"]["CPU Performance"]["Context Switch Based Detection"] + ContextSwitchBasedDetection
            detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Dynamic"]["CPU Performance"]["Translation Block Cache Based Detection"] = detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Dynamic"]["CPU Performance"]["Translation Block Cache Based Detection"] + TranslationBlockCacheBasedDetection
            detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Dynamic"]["CPU Performance"]["Misaligned Vectorization Based Detection"] = detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Dynamic"]["CPU Performance"]["Misaligned Vectorization Based Detection"] + MisalignedVectorizationBasedDetection
            detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Dynamic"]["CPU Performance"]["Updates to Execution State Bits"] = detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Dynamic"]["CPU Performance"]["Updates to Execution State Bits"] + UpdatestoExecutionStateBits
            #detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Dynamic"]["CPU Performance"]["Incomplete Sanitization for Undefined Instructions"] = detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Dynamic"]["CPU Performance"]["Incomplete Sanitization for Undefined Instructions"] + IncompleteSanitizationforUndefinedInstructions
            #detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Dynamic"]["Graphical Performance"] = detailedTemplate["Anti Virtual Environment"]["Anti-Emulator"]["Dynamic"]["Graphical Performance"] + GraphicalPerformance
            #print("555555555555555555555")
            detailedTemplate["Anti Virtual Environment"]["Anti App-Level Virtualization"]["File Path"] = detailedTemplate["Anti Virtual Environment"]["Anti App-Level Virtualization"]["File Path"]+FilePath
            detailedTemplate["Anti Virtual Environment"]["Anti App-Level Virtualization"]["Share UID"] = detailedTemplate["Anti Virtual Environment"]["Anti App-Level Virtualization"]["Share UID"]+ShareUID
            detailedTemplate["Anti Virtual Environment"]["Anti App-Level Virtualization"]["Port Detection"] = detailedTemplate["Anti Virtual Environment"]["Anti App-Level Virtualization"]["Port Detection"]+PortDetection
            detailedTemplate["Anti Virtual Environment"]["Anti App-Level Virtualization"]["Code Injection And Hooking"] = detailedTemplate["Anti Virtual Environment"]["Anti App-Level Virtualization"]["Code Injection And Hooking"]+CodeInjectionAndHooking
            #print("6666666666666666666")
            detailedTemplate["Anti-Tampering"]["SafetyNet Attestation"] = detailedTemplate["Anti-Tampering"]["SafetyNet Attestation"] + SafetyNetAttestation
            #print("616161616161616161")
            detailedTemplate["Anti-Tampering"]["SafetyNet Attestation OLD"] = detailedTemplate["Anti-Tampering"]["SafetyNet Attestation OLD"] + SafetyNetAttestationOLD
            #print("62626262626262626")
            #detailedTemplate["Anti-Tampering"]["SafetyNet Attestation NEW"] = detailedTemplate["Anti-Tampering"]["SafetyNet Attestation NEW"] + SafetyNetAttestationNEW
            #print("636363636363636363")
            detailedTemplate["Anti-Tampering"]["Installer Verification"] = detailedTemplate["Anti-Tampering"]["Installer Verification"] + InstallerVerification
            #print("64646464646464646")
            detailedTemplate["Anti-Tampering"]["Installer Verification OLD"] = detailedTemplate["Anti-Tampering"]["Installer Verification OLD"] + InstallerVerificationOLD
            #print("656565656565656565")
            #detailedTemplate["Anti-Tampering"]["Installer Verification NEW"] = detailedTemplate["Anti-Tampering"]["Installer Verification NEW"] + InstallerVerificationNEW
            #print("6.6.6.6.6.66.6.66.6.6")
            detailedTemplate["Anti-Tampering"]["Code Integrity Checking"] = detailedTemplate["Anti-Tampering"]["Code Integrity Checking"] + CodeIntegrityChecking
            detailedTemplate["Anti-Tampering"]["Code Integrity Checking OLD"] = detailedTemplate["Anti-Tampering"]["Code Integrity Checking OLD"] + CodeIntegrityCheckingOLD
            #detailedTemplate["Anti-Tampering"]["Code Integrity Checking NEW"] = detailedTemplate["Anti-Tampering"]["Code Integrity Checking NEW"] + CodeIntegrityCheckingNEW
            #print("66767676767676767676")
            detailedTemplate["Anti-Tampering"]["Signature Checking"] = detailedTemplate["Anti-Tampering"]["Signature Checking"] + SignatureChecking
            #print("686868686868686888686868")
            
            detailedTemplate["Anti-Tampering"]["Signature Checking OLD"] = detailedTemplate["Anti-Tampering"]["Signature Checking OLD"] + SignatureCheckingOLD
            #print("6969696969696969696")
            #detailedTemplate["Anti-Tampering"]["Signature Checking NEW"] = detailedTemplate["Anti-Tampering"]["Signature Checking NEW"] + SignatureCheckingNEW
            #print("7777777777777777777777")
            detailedTemplate["Anti-Hooking"]["Xposed"] = detailedTemplate["Anti-Hooking"]["Xposed"] + Xposed
            detailedTemplate["Anti-Hooking"]["Xposed OLD"] = detailedTemplate["Anti-Hooking"]["Xposed OLD"] + XposedOLD
            #detailedTemplate["Anti-Hooking"]["Xposed NEW"] = detailedTemplate["Anti-Hooking"]["Xposed NEW"] + XposedNEW
            detailedTemplate["Anti-Hooking"]["Frida"] = detailedTemplate["Anti-Hooking"]["Frida"] + Frida
            detailedTemplate["Anti-Hooking"]["Frida OLD"] = detailedTemplate["Anti-Hooking"]["Frida OLD"] + FridaOLD
            #detailedTemplate["Anti-Hooking"]["Frida NEW"] = detailedTemplate["Anti-Hooking"]["Frida NEW"] + FridaNEW
            #print("88888888888888888888")
            detailedTemplate["Root Detection"]["Check Installed Packages"] = detailedTemplate["Root Detection"]["Check Installed Packages"] + CheckInstalledPackages
            #detailedTemplate["Root Detection"]["Check Processes/Services"] = detailedTemplate["Root Detection"]["Check Processes/Services"] + CheckProcessesServices
            detailedTemplate["Root Detection"]["Check Shell Commands Execution"] = detailedTemplate["Root Detection"]["Check Shell Commands Execution"] + CheckShellCommandsExecution
            detailedTemplate["Root Detection"]["Check Build Tag and System Properties"] = detailedTemplate["Root Detection"]["Check Build Tag and System Properties"] + CheckBuildTagandSystemProperties
            detailedTemplate["Root Detection"]["Directory Permissions"] = detailedTemplate["Root Detection"]["Directory Permissions"] + DirectoryPermissions
            #print("9999999999999999999")
            
            for i in range(36):
                if(SumSub==i):
                    detailedTemplate["Sum"]["Sub_"+str(i)] = detailedTemplate["Sum"]["Sub_"+str(i)] + 1
                    break
            
            for i in range(6):
                if(SumMajor==i):
                    detailedTemplate["Sum"]["Major_"+str(i)] = detailedTemplate["Sum"]["Major_"+str(i)] + 1
                    break
            
            
            #测试部分
            
            detailedTemplate["Test"]["Using Timing Check"]["B1"] = detailedTemplate["Test"]["Using Timing Check"]["B1"] + B1
            detailedTemplate["Test"]["Using Timing Check"]["B2"] = detailedTemplate["Test"]["Using Timing Check"]["B2"] + B2
            detailedTemplate["Test"]["Using Timing Check"]["B3"] = detailedTemplate["Test"]["Using Timing Check"]["B3"] + B3
            
            
            detailedTemplate["Test"]["shareUID"]["A"] = detailedTemplate["Test"]["shareUID"]["A"] + isShareUIDA
            detailedTemplate["Test"]["shareUID"]["B"] = detailedTemplate["Test"]["shareUID"]["B"] + isShareUIDB
            detailedTemplate["Test"]["shareUID"]["C"] = detailedTemplate["Test"]["shareUID"]["C"] + isShareUIDC
            detailedTemplate["Test"]["shareUID"]["D"] = detailedTemplate["Test"]["shareUID"]["D"] + isShareUIDD
            detailedTemplate["Test"]["shareUID"]["E"] = detailedTemplate["Test"]["shareUID"]["E"] + isShareUIDE
            detailedTemplate["Test"]["shareUID"]["F"] = detailedTemplate["Test"]["shareUID"]["F"] + isShareUIDF
            
            detailedTemplate["Test"]["HardwareComponents"]["A"] = detailedTemplate["Test"]["HardwareComponents"]["A"] + isHardwareComponentsA
            detailedTemplate["Test"]["HardwareComponents"]["B"] = detailedTemplate["Test"]["HardwareComponents"]["B"] + isHardwareComponentsB
            detailedTemplate["Test"]["HardwareComponents"]["C"] = detailedTemplate["Test"]["HardwareComponents"]["C"] + isHardwareComponentsC
            detailedTemplate["Test"]["HardwareComponents"]["D"] = detailedTemplate["Test"]["HardwareComponents"]["D"] + isHardwareComponentsD
            detailedTemplate["Test"]["HardwareComponents"]["E"] = detailedTemplate["Test"]["HardwareComponents"]["E"] + isHardwareComponentsE
            detailedTemplate["Test"]["HardwareComponents"]["F"] = detailedTemplate["Test"]["HardwareComponents"]["F"] + isHardwareComponentsF
            detailedTemplate["Test"]["HardwareComponents"]["G"] = detailedTemplate["Test"]["HardwareComponents"]["G"] + isHardwareComponentsG
            detailedTemplate["Test"]["HardwareComponents"]["H"] = detailedTemplate["Test"]["HardwareComponents"]["H"] + isHardwareComponentsH
            detailedTemplate["Test"]["HardwareComponents"]["J"] = detailedTemplate["Test"]["HardwareComponents"]["J"] + isHardwareComponentsJ
            detailedTemplate["Test"]["HardwareComponents"]["K"] = detailedTemplate["Test"]["HardwareComponents"]["K"] + isHardwareComponentsK
            detailedTemplate["Test"]["HardwareComponents"]["L"] = detailedTemplate["Test"]["HardwareComponents"]["L"] + isHardwareComponentsL
            detailedTemplate["Test"]["HardwareComponents"]["KL"] = detailedTemplate["Test"]["HardwareComponents"]["KL"] + (isHardwareComponentsL and isHardwareComponentsK)
            
            detailedTemplate["Test"]["EmulatorRelated"]["A"] = detailedTemplate["Test"]["EmulatorRelated"]["A"] + isEmulatorRelatedStringsAndSystemPropertiesA
            detailedTemplate["Test"]["EmulatorRelated"]["B"] = detailedTemplate["Test"]["EmulatorRelated"]["B"] + isEmulatorRelatedStringsAndSystemPropertiesB
            detailedTemplate["Test"]["EmulatorRelated"]["C"] = detailedTemplate["Test"]["EmulatorRelated"]["C"] + isEmulatorRelatedStringsAndSystemPropertiesC
            detailedTemplate["Test"]["EmulatorRelated"]["D"] = detailedTemplate["Test"]["EmulatorRelated"]["D"] + isEmulatorRelatedStringsAndSystemPropertiesD
            detailedTemplate["Test"]["EmulatorRelated"]["E"] = detailedTemplate["Test"]["EmulatorRelated"]["E"] + isEmulatorRelatedStringsAndSystemPropertiesE
            detailedTemplate["Test"]["EmulatorRelated"]["F"] = detailedTemplate["Test"]["EmulatorRelated"]["F"] + isEmulatorRelatedStringsAndSystemPropertiesF
            detailedTemplate["Test"]["EmulatorRelated"]["G"] = detailedTemplate["Test"]["EmulatorRelated"]["G"] + isEmulatorRelatedStringsAndSystemPropertiesG
            detailedTemplate["Test"]["EmulatorRelated"]["H"] = detailedTemplate["Test"]["EmulatorRelated"]["H"] + isEmulatorRelatedStringsAndSystemPropertiesH
            detailedTemplate["Test"]["EmulatorRelated"]["ABC"] = detailedTemplate["Test"]["EmulatorRelated"]["ABC"] + (isEmulatorRelatedStringsAndSystemPropertiesA and isEmulatorRelatedStringsAndSystemPropertiesB and isEmulatorRelatedStringsAndSystemPropertiesC)
            detailedTemplate["Test"]["EmulatorRelated"]["DE"] = detailedTemplate["Test"]["EmulatorRelated"]["DE"] + (isEmulatorRelatedStringsAndSystemPropertiesD or isEmulatorRelatedStringsAndSystemPropertiesE)
            detailedTemplate["Test"]["EmulatorRelated"]["FGH"] = detailedTemplate["Test"]["EmulatorRelated"]["FGH"] + ((isEmulatorRelatedStringsAndSystemPropertiesF and  isEmulatorRelatedStringsAndSystemPropertiesG) or isEmulatorRelatedStringsAndSystemPropertiesH)
            
            #detailedTemplate["Test"]["Presence"]["A"] = detailedTemplate["Test"]["Presence"]["A"] + isPresenceofOtherAppsA
            #detailedTemplate["Test"]["Presence"]["B"] = detailedTemplate["Test"]["Presence"]["B"] + isPresenceofOtherAppsB
            #detailedTemplate["Test"]["Presence"]["C"] = detailedTemplate["Test"]["Presence"]["C"] + isPresenceofOtherAppsC
            #detailedTemplate["Test"]["Presence"]["D"] = detailedTemplate["Test"]["Presence"]["D"] + isPresenceofOtherAppsD
            #detailedTemplate["Test"]["Presence"]["E"] = detailedTemplate["Test"]["Presence"]["E"] + isPresenceofOtherAppsE
            #detailedTemplate["Test"]["Presence"]["F"] = detailedTemplate["Test"]["Presence"]["F"] + isPresenceofOtherAppsF
            #detailedTemplate["Test"]["Presence"]["AB"] = detailedTemplate["Test"]["Presence"]["AB"] + (isPresenceofOtherAppsA and isPresenceofOtherAppsB)
            #detailedTemplate["Test"]["Presence"]["DE"] = detailedTemplate["Test"]["Presence"]["DE"] + (isPresenceofOtherAppsD and isPresenceofOtherAppsE)
            #detailedTemplate["Test"]["Presence"]["EFC"] = detailedTemplate["Test"]["Presence"]["EFC"] + (isPresenceofOtherAppsE and isPresenceofOtherAppsF and isPresenceofOtherAppsC)
            
            detailedTemplate["Test"]["Debugger"]["A"] = detailedTemplate["Test"]["Debugger"]["A"] + isDebuggerRelatedValueA
            detailedTemplate["Test"]["Debugger"]["B"] = detailedTemplate["Test"]["Debugger"]["B"] + isDebuggerRelatedValueB
            detailedTemplate["Test"]["Debugger"]["C"] = detailedTemplate["Test"]["Debugger"]["C"] + isDebuggerRelatedValueC
            detailedTemplate["Test"]["Debugger"]["D"] = detailedTemplate["Test"]["Debugger"]["D"] + isDebuggerRelatedValueD
            detailedTemplate["Test"]["Debugger"]["E"] = detailedTemplate["Test"]["Debugger"]["E"] + isDebuggerRelatedValueE
            detailedTemplate["Test"]["Debugger"]["F"] = detailedTemplate["Test"]["Debugger"]["F"] + isDebuggerRelatedValueF
            detailedTemplate["Test"]["Debugger"]["G"] = detailedTemplate["Test"]["Debugger"]["G"] + isDebuggerRelatedValueG
            detailedTemplate["Test"]["Debugger"]["H"] = detailedTemplate["Test"]["Debugger"]["H"] + isDebuggerRelatedValueH
            detailedTemplate["Test"]["Debugger"]["I"] = detailedTemplate["Test"]["Debugger"]["I"] + isDebuggerRelatedValueI
            detailedTemplate["Test"]["Debugger"]["J"] = detailedTemplate["Test"]["Debugger"]["J"] + isDebuggerRelatedValueJ
            detailedTemplate["Test"]["Debugger"]["K"] = detailedTemplate["Test"]["Debugger"]["K"] + isDebuggerRelatedValueK
            detailedTemplate["Test"]["Debugger"]["L"] = detailedTemplate["Test"]["Debugger"]["L"] + isDebuggerRelatedValueL
            detailedTemplate["Test"]["Debugger"]["M"] = detailedTemplate["Test"]["Debugger"]["M"] + isDebuggerRelatedValueM
            detailedTemplate["Test"]["Debugger"]["N"] = detailedTemplate["Test"]["Debugger"]["N"] + isDebuggerRelatedValueN
            detailedTemplate["Test"]["Debugger"]["O"] = detailedTemplate["Test"]["Debugger"]["O"] + isDebuggerRelatedValueO
            detailedTemplate["Test"]["Debugger"]["P"] = detailedTemplate["Test"]["Debugger"]["P"] + isDebuggerRelatedValueP
            detailedTemplate["Test"]["Debugger"]["Q"] = detailedTemplate["Test"]["Debugger"]["Q"] + isDebuggerRelatedValueQ
            detailedTemplate["Test"]["Debugger"]["R"] = detailedTemplate["Test"]["Debugger"]["R"] + isDebuggerRelatedValueR
            detailedTemplate["Test"]["Debugger"]["S"] = detailedTemplate["Test"]["Debugger"]["S"] + isDebuggerRelatedValueS
            detailedTemplate["Test"]["Debugger"]["AB"] = detailedTemplate["Test"]["Debugger"]["AB"] + (isDebuggerRelatedValueA and isDebuggerRelatedValueB)
            detailedTemplate["Test"]["Debugger"]["NO"] = detailedTemplate["Test"]["Debugger"]["NO"] + (isDebuggerRelatedValueN and isDebuggerRelatedValueO)
            detailedTemplate["Test"]["Debugger"]["PQ"] = detailedTemplate["Test"]["Debugger"]["PQ"] + (isDebuggerRelatedValueP and isDebuggerRelatedValueQ)
            detailedTemplate["Test"]["Debugger"]["RS"] = detailedTemplate["Test"]["Debugger"]["RS"] + (isDebuggerRelatedValueR and isDebuggerRelatedValueS)

            detailedTemplate["Test"]["DUMP"]["A"] = detailedTemplate["Test"]["DUMP"]["A"] + isAntiDumpA
            detailedTemplate["Test"]["DUMP"]["B"] = detailedTemplate["Test"]["DUMP"]["B"] + isAntiDumpB
            detailedTemplate["Test"]["DUMP"]["C"] = detailedTemplate["Test"]["DUMP"]["C"] + isAntiDumpC
            detailedTemplate["Test"]["DUMP"]["D"] = detailedTemplate["Test"]["DUMP"]["D"] + isAntiDumpD
            
            #detailedTemplate["Test"]["HashValueComparison"]["A"] = detailedTemplate["Test"]["HashValueComparison"]["A"] + isHashValueComparisonA
            #detailedTemplate["Test"]["HashValueComparison"]["B"] = detailedTemplate["Test"]["HashValueComparison"]["B"] + isHashValueComparisonB
            
            detailedTemplate["Test"]["AlteringDebuggerMemory"]["A"] = detailedTemplate["Test"]["AlteringDebuggerMemory"]["A"] + isAlteringDebuggerMemoryA
            detailedTemplate["Test"]["AlteringDebuggerMemory"]["B"] = detailedTemplate["Test"]["AlteringDebuggerMemory"]["B"] + isAlteringDebuggerMemoryB
            
            detailedTemplate["Test"]["ContextSwitchBasedDetection"]["A"] = detailedTemplate["Test"]["ContextSwitchBasedDetection"]["A"] + isContextSwitchBasedDetectionA
            detailedTemplate["Test"]["ContextSwitchBasedDetection"]["B"] = detailedTemplate["Test"]["ContextSwitchBasedDetection"]["B"] + isContextSwitchBasedDetectionB
            detailedTemplate["Test"]["ContextSwitchBasedDetection"]["C"] = detailedTemplate["Test"]["ContextSwitchBasedDetection"]["C"] + isContextSwitchBasedDetectionC
            
            detailedTemplate["Test"]["CheckShellCommandsExecution"]["A"] = detailedTemplate["Test"]["CheckShellCommandsExecution"]["A"] + isCheckShellCommandsExecutionA
            detailedTemplate["Test"]["CheckShellCommandsExecution"]["B"] = detailedTemplate["Test"]["CheckShellCommandsExecution"]["B"] + isCheckShellCommandsExecutionB
            detailedTemplate["Test"]["CheckShellCommandsExecution"]["C"] = detailedTemplate["Test"]["CheckShellCommandsExecution"]["C"] + isCheckShellCommandsExecutionC
            
            
            detailedTemplate["Test"]["CheckBuildTagandSystemProperties"]["A"] = detailedTemplate["Test"]["CheckBuildTagandSystemProperties"]["A"] + isCheckBuildTagandSystemPropertiesA
            detailedTemplate["Test"]["CheckBuildTagandSystemProperties"]["B"] = detailedTemplate["Test"]["CheckBuildTagandSystemProperties"]["B"] + isCheckBuildTagandSystemPropertiesB
            detailedTemplate["Test"]["CheckBuildTagandSystemProperties"]["C"] = detailedTemplate["Test"]["CheckBuildTagandSystemProperties"]["C"] + isCheckBuildTagandSystemPropertiesC
            detailedTemplate["Test"]["CheckBuildTagandSystemProperties"]["D"] = detailedTemplate["Test"]["CheckBuildTagandSystemProperties"]["D"] + isCheckBuildTagandSystemPropertiesD
            detailedTemplate["Test"]["CheckBuildTagandSystemProperties"]["E"] = detailedTemplate["Test"]["CheckBuildTagandSystemProperties"]["E"] + isCheckBuildTagandSystemPropertiesE
            detailedTemplate["Test"]["CheckBuildTagandSystemProperties"]["F"] = detailedTemplate["Test"]["CheckBuildTagandSystemProperties"]["F"] + isCheckBuildTagandSystemPropertiesF
            detailedTemplate["Test"]["CheckBuildTagandSystemProperties"]["G"] = detailedTemplate["Test"]["CheckBuildTagandSystemProperties"]["G"] + isCheckBuildTagandSystemPropertiesG
            detailedTemplate["Test"]["CheckBuildTagandSystemProperties"]["EFG"] = detailedTemplate["Test"]["CheckBuildTagandSystemProperties"]["EFG"] + ((isCheckBuildTagandSystemPropertiesE or isCheckBuildTagandSystemPropertiesF) and isCheckBuildTagandSystemPropertiesG)
            
            
            detailedTemplate["Test"]["DirectoryPermissions"]["A"] = detailedTemplate["Test"]["DirectoryPermissions"]["A"] + isDirectoryPermissionsA
            detailedTemplate["Test"]["DirectoryPermissions"]["B"] = detailedTemplate["Test"]["DirectoryPermissions"]["B"] + isDirectoryPermissionsB
            
            
        json.dump(detailedTemplate,open("./output" + currentTime + "/summary_detailed.json",'w'),indent=4)
        #print("writer = csv.writer(file)")
        with open("./output" + currentTime + "/HashDict.csv", 'a', newline='') as file:
            writer = csv.writer(file)
            writer.writerow([packageName, sha256])



        OK = OK + 1
        now = datetime.datetime.now()
        print("The current time is: ", now.strftime("%Y-%m-%d %H:%M:%S"))
        print("skipjava",skipjava)
        
    except Exception as e:
        print("ERROR: A few problems arose when analyzing this apk!",e)

    try:
        #分析结束，清空列表
        classes_summary.clear()
        methods_summary.clear()
        attributes_summary.clear()
        JAVA_strings_summary.clear()
        NATIVE_strings_summary.clear()
        NATIVE_symbol_summary.clear()
        strings_summary.clear()
        
    except Exception as e:
        print("An error occurred while freeing memory",e)

    #except:
        #print("清空NATIVE_symbol_summary出错")
        #print("在Native分析",packageName,"时出错！")
        
    #分析结束，删除temp
    #if os.path.exists("./temp"):
    #    shutil.rmtree("./temp")

print("A total of ",len(folder_name)," apks were analyzed, and ",OK," were successful")
endtime = datetime.datetime.now()
print("Total time spent ",(endtime - starttime).seconds," seconds")
print("skipjava",skipjava)




