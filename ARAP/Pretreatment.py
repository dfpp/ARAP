import os
import shutil
apksPath = "./apks"
aLLApksList = list()
#chmod -R 777 ./

for fileString in os.listdir(apksPath):
    if fileString.endswith(".apk"): 
        
        fileStringWithoutApk = fileString.split(".")[0]
        fullFileStringWithoutApk = os.path.join(apksPath,fileStringWithoutApk)
        
        fullFileString = os.path.join(apksPath,fileString)
        #print(fullFileString)
        fullFileStringWithoutApk = fullFileStringWithoutApk.replace(" ", "_")
        #print(fullFileString)
        if not os.path.exists(fullFileStringWithoutApk):
           
            try:
                #print(fullFileStringWithoutApk)
                os.mkdir(fullFileStringWithoutApk)
                
                
            except:
                print("Failed to create the apk analysis directory. Please check permissions")
            
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
            print("Failed to move apk. Please check permissions")
        
        
        
