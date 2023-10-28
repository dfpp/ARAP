import os
import shutil
apksPath = "./apks"
aLLApksList = list()
#chmod -R 777 ./

for fileString in os.listdir(apksPath):
    if fileString.endswith(".apk"): #找到所有的apk文件
        #为每个apk创建一个目录。目录名同apk名
        fileStringWithoutApk = fileString.split(".")[0]
        fullFileStringWithoutApk = os.path.join(apksPath,fileStringWithoutApk)
        
        fullFileString = os.path.join(apksPath,fileString)
        #print(fullFileString)
        fullFileStringWithoutApk = fullFileStringWithoutApk.replace(" ", "_")
        #print(fullFileString)
        if not os.path.exists(fullFileStringWithoutApk):
            #创建分析目录
            try:
                #print(fullFileStringWithoutApk)
                os.mkdir(fullFileStringWithoutApk)
                
                
            except:
                print("创建apk分析目录失败,请检查权限")
            
        try:
            #print("fullFileString",fullFileString)
            #print("fullFileStringWithoutApk",fullFileStringWithoutApk)
            oldName = shutil.move(fullFileString,fullFileStringWithoutApk)
            newName = fileStringWithoutApk.replace(" ", "_")
            newName = os.path.join(fullFileStringWithoutApk,newName)
            newName = newName + ".apk"
            os.rename(oldName, newName)
            print(oldName,newName)
        except:
            print("移动apk失败，请检查权限")
        
        
        