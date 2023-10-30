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
import math
import hashlib
import filetype

baksmali_jar_path = './tools/baksmali-2.5.2.jar'
smali_jar_path = './tools/smali-2.5.2.jar'
'''
List_Need_Removed = ["butterknife","com/adcolony","com/adjust","com/crittercism","com/readystatesoftware",\
                     "com/appsflyer","com/networkbench","com/dropbox","com/braintreepayments","com/airbnb/lottie" ,\
                     "com/jakewharton","com/rateus","com/twitter","com/comscore","com/my/target","com/startapp",\
                     "com/mobvista","com/monet","com/samsung","com/kochava","com/baidu","com/tune",\
                     "com/amazon","com/moat","com/inmobi","com/flurry","com/tencent","com/paypal","com/distil",\
                     "com/zndesk","com/bugsnag","com/applovin","com/squareup","com/foursquare","com/mixpanel",\
                     "com/getkeepsafe","com/qihoo360","com/anjlab","com/unity3d","com/zopim", \
                     "com/learnium","com/crashlytics","com/stripe","com/umeng","cn/jiguang","dalvik","dagger", \
                     "de/blinkt/openvpn","javax","io/fabric","io/agora","io/sentry","io/intercom","io/branch","io/reactivex",\
                     "io/realm","net/hockeyapp","net/openid","org/acra","org/spongycastle","org/xbill","okio/gzipsing",\
                     "org/apache","org/chromium","org/conscrypt","org/mozilla","org/sufficientlysecure","org/godotengine",\
                     "org/webrtc","okhttp3","org/greenrobot","org/robolectric","org/parceler","retrofit2","kotlin","kotlinx"]
'''

List_Need_Removed = []

'''
"com/google/android/gms/common","com/google/android/gms/internal/ads","androidx/core/provider","com/appbrain",\
"com/google/android/gms/measurement","com/prime31","android/support/v4/provider"
"com/facebook"
"com/scottyab"
'''

'''
sumsub_variables = {
    1: SumSub_1,
    2: SumSub_2,
    3: SumSub_3,
    4: SumSub_4,
    5: SumSub_5,
    6: SumSub_6,
    7: SumSub_7,
    8: SumSub_8,
    9: SumSub_9,
    10: SumSub_10,
    11: SumSub_11,
    12: SumSub_12,
    13: SumSub_13,
    14: SumSub_14,
    15: SumSub_15,
    16: SumSub_16,
    17: SumSub_17,
    18: SumSub_18,
    19: SumSub_19,
    20: SumSub_20,
    
}
'''
def get_filename_without_extension(file_path):
   
    file_name_with_extension = os.path.basename(file_path)  
    file_name_without_extension = os.path.splitext(file_name_with_extension)[0]  
    return file_name_without_extension


def is_so_file(filename):
    kind = filetype.guess(filename)
    if kind.extension == "elf":
        return True
    else:
        return False
    
    
def has_consecutive_90(s):
    if((b"\x90"*1024 in s) and (b"\x90"*1025 not in s)):
        return True
    
    if((b"\x00\xbf"*1024 in s) and (b"\x00\xbf"*1025 not in s)):
        return True
    else:
        return False



def calculate_sha1(apk_path):
    sha1 = hashlib.sha1()
    with open(apk_path, "rb") as f:
        while True:
            data = f.read(1024)
            if not data:
                break
            sha1.update(data)
    return sha1.hexdigest()

def calculate_sha256(file_path):
    sha256 = hashlib.sha256()
    with open(file_path, 'rb') as f:
        while True:
            data = f.read(1024)
            if not data:
                break
            sha256.update(data)
    return sha256.hexdigest()

#用于处理无法删除的目录
def handle_remove_readonly(func, path, exc):
    excvalue = exc[1]
    if func in (os.rmdir, os.remove) and excvalue.errno == errno.EACCES:
        os.chmod(path, stat.S_IRWXU| stat.S_IRWXG| stat.S_IRWXO) 
        func(path)
    else:
        raise


def extract_dex_files(apk_file_path):
   
    apk_dir_path = os.path.dirname(apk_file_path)
    dex_dir_path = os.path.join(apk_dir_path, 'dex')
    
    
    os.makedirs(dex_dir_path, exist_ok=True)
    
    
    with zipfile.ZipFile(apk_file_path, 'r') as zip_ref:
        for item in zip_ref.infolist():
            if item.filename.endswith('.dex'):
                
                dex_file_path = os.path.join(dex_dir_path, os.path.basename(item.filename))
                
                with open(dex_file_path, 'wb') as dex_file:
                    dex_file.write(zip_ref.read(item.filename))
                    


def traverse_folder_smali(folder, smaliList):
    for root, dirs, files in os.walk(folder):
        for file in files:
            if file.endswith('.smali'):
                smaliList.append(os.path.join(root, file))


def generate_smali_files(apk_file_path, baksmali_jar_path, list_need_removed):
   
    
    dex_dir_path = os.path.join(os.path.dirname(apk_file_path), 'dex')
    if not os.path.exists(dex_dir_path):
        os.makedirs(dex_dir_path)
    with zipfile.ZipFile(apk_file_path, 'r') as zip_ref:
        for item in zip_ref.infolist():
            if item.filename.endswith('.dex'):
                content = zip_ref.read(item.filename)
                dex_file_path = os.path.join(dex_dir_path, os.path.basename(item.filename))
                with open(dex_file_path, 'wb') as dex_file:
                    dex_file.write(content)

    
    smali_dir_path = os.path.join(os.path.dirname(apk_file_path), 'smali')
    if not os.path.exists(smali_dir_path):
        os.makedirs(smali_dir_path)

    
    for dex_file in os.listdir(dex_dir_path):
        if dex_file.endswith('.dex'):
            dex_path = os.path.join(dex_dir_path, dex_file)
            smali_path = os.path.join(smali_dir_path, dex_file.replace('.dex', ''))
            cmd = f'java -jar {baksmali_jar_path} d {dex_path} -o {smali_path}'
            p = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

            try:
                stdout, stderr = p.communicate(timeout=900)
                p.wait()
            except subprocess.TimeoutExpired:
                p.kill()
                stdout, stderr = p.communicate()

            if p.returncode != 0:
                print(f'Error: {stderr.decode()}')
            

            p.kill()

    
    for root, dirs, files in os.walk(smali_dir_path):
        for item in list_need_removed:
            dir_path = os.path.join(root, item.replace("/", os.sep))
            if os.path.exists(dir_path):
                shutil.rmtree(dir_path, onerror=handle_remove_readonly)

def check_single_file(apk_file_path):
    directory = os.path.join(os.path.dirname(apk_file_path), "finalDex")
    files = os.listdir(directory)
    return len(files) == 1


def execute_d8(apk_file_path):
    out_dir = os.path.join(os.path.dirname(apk_file_path), 'outDex')

    if not os.path.exists(out_dir):
        os.makedirs(out_dir)
    
    final_dex_dir = os.path.join(os.path.dirname(apk_file_path), 'finalDex/*.dex')
    os.system(f'd8 --output {out_dir} {final_dex_dir}')


def generate_finalDex(apkfilepath):
    
    apk_dir = os.path.dirname(apkfilepath)
    
   
    final_dex_dir = os.path.join(apk_dir, "finalDex")
    
    
    os.makedirs(final_dex_dir, exist_ok=True)
    
    
    return final_dex_dir


def generate_dex(apkfilepath):
    
    apk_dir = os.path.dirname(apkfilepath)
    
    
    final_dex_dir = os.path.join(apk_dir, "dex")
    
    
    os.makedirs(final_dex_dir, exist_ok=True)
    
    
    return final_dex_dir

def generate_outDex(apkfilepath):
    
    apk_dir = os.path.dirname(apkfilepath)
    
    
    out_dex_dir = os.path.join(apk_dir, "outDex")
    
    
    os.makedirs(out_dex_dir, exist_ok=True)
    
    
    return out_dex_dir

def check_file_size(filepath):
    if os.path.getsize(filepath) > 10 * 1024 * 1024:
        return True
    else:
        return False


def delete_other_files(apk_path):
    apk_dir = os.path.dirname(apk_path)
    apk_name = os.path.basename(apk_path)
    
    for file_name in os.listdir(apk_dir):
        file_path = os.path.join(apk_dir, file_name)
        if file_name != apk_name:  
            if os.path.isfile(file_path):
                os.remove(file_path)  
            elif os.path.isdir(file_path):
                shutil.rmtree(file_path)  
                

def get_apk_package_name(apk_file_path):
   
    command = ["aapt", "dump", "badging", apk_file_path]
    
    output = subprocess.check_output(command, universal_newlines=True)
    
    package_name = None
    for line in output.splitlines():
        if line.startswith("package: name="):
            package_name = line.split("'")[1]
            break
    return package_name

def get_manifest(apk_file):
    cmd = f"aapt dump badging {apk_file}"
    p = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE)
    
    try:
        stdout, stderr = p.communicate(timeout=900)
        p.wait()
    except subprocess.TimeoutExpired:
        p.kill()
        stdout, stderr = p.communicate()
    
    p.kill()
    return stdout.decode("utf-8").strip()

def get_main_activity(manifest):
    pattern = r"launchable-activity: name='(.*?)'"
    match = re.search(pattern, manifest)
    if match:
        main_activity_name = match.group(1)
        return main_activity_name
    else:
        return None
    

def has_valid_signature_v2_v3_v4(apk_path):
    
    try:
        
        cmd = ['apksigner', 'verify', '-v', apk_path]
        p = subprocess.Popen(cmd,stdout=subprocess.PIPE, stderr=subprocess.PIPE)

        try:
            stdout, stderr = p.communicate(timeout=60)
            p.wait()
        except subprocess.TimeoutExpired:
            p.kill()
            stdout, stderr = p.communicate()
            p.wait()

        output = stdout.decode()
        #p.terminate()
        p.kill()
        

        
        return '(APK Signature Scheme v2): true' in output or '(APK Signature Scheme v3): true' in output or '(APK Signature Scheme v4): true' in output
    except subprocess.CalledProcessError:
        
        return False

        

def get_current_time_as_string():
    now = datetime.datetime.now()
    return "_" + now.strftime("%Y_%m_%d_%H_%M")


class TimeoutException(Exception):
    pass

def timeout_handler(signum, frame):
    raise TimeoutException()

max_tries = 1  
max_timeouts = 2 

def Check_behavior_change(input_str):
    if("exit" in input_str or "killProcess" in input_str or "Intent intent" in input_str):
        return True
    else:
        return False

def find_num_and_check_100000000(input_str):
   
    pattern = r'\b([1-9][0-9]{8,})\b'

    
    match = re.search(pattern, input_str)
    if match:
        
        num_str = match.group(1)
        index = match.end()
        if 'System.nanoTime' not in input_str[index:] and 'SystemClock.elapsedRealtimeNanos'not in input_str[index:]:
            return True

    return False


def find_num_and_check_100(input_str):
    
    pattern = r'\b([1-9]\d{2,})\b'

    
    match = re.search(pattern, input_str)
    if match:
       
        num_str = match.group(1)
        index = match.end()
        if 'System.currentTimeMillis' not in input_str[index:] and 'SystemClock.elapsedRealtime' not in input_str[index:]:
            return True

    return False



def is_only_one_number_greater_than_or_equal_to_2_1(string):
    #pattern = r".*>\s*(\d+)"
    pattern = r"[\s\S]*if.*>[ ]*(\d+)(?![\s\S]*System\.nanoTime\(\))"
    match = re.match(pattern, string)
    if match is None:
        return False
    number = int(match.group(1))
    return number >= 100000000


def is_only_one_number_greater_than_or_equal_to_2_2(string):
    #pattern = r".*>\s*(\d+)"
    pattern = r"[\s\S]*if.*>[ ]*(\d+)(?![\s\S]*System\.currentTimeMillis\(\))"
    match = re.match(pattern, string)
    if match is None:
        return False
    number = int(match.group(1))
    return number >= 100


def is_only_one_number_greater_than_or_equal_to_2_3(string):
    #pattern = r".*>\s*(\d+)"
    pattern = r"[\s\S]*if.*>[ ]*(\d+)(?![\s\S]*SystemClock\.elapsedRealtime\(\))"
    match = re.match(pattern, string)
    if match is None:
        return False
    number = int(match.group(1))
    return number >= 100


def is_only_one_number_greater_than_or_equal_to_2_4(string):
    #pattern = r".*>\s*(\d+)"
    pattern = r"[\s\S]*if.*>[ ]*(\d+)(?![\s\S]*SystemClock\.elapsedRealtimeNanos\(\))"
    match = re.match(pattern, string)
    if match is None:
        return False
    number = int(match.group(1))
    return number >= 100000000

    
def otherApp(string):
    pattern = r"[\s\S]*if.*<[ ]*(\d+)(?![\s\S]*getPackageManager)"
    match = re.match(pattern, string)
    if match is None:
        return False
    return True



def start_hluda_server():
   
    cmd = ['adb', 'shell', 'su', '-c', './data/local/tmp/hluda-server-15.1.28-android-arm64', '&']
    p = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

    try:
        stdout, stderr = p.communicate(timeout=60)
        p.wait()
    except subprocess.TimeoutExpired:
        p.kill()
        stdout, stderr = p.communicate()
        

    
    #p.terminate()
    p.kill()

def forward_port():
    
    cmd = ['adb', 'forward', 'tcp:27042', 'tcp:27042']
    p = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

    try:
        stdout, stderr = p.communicate(timeout=60)
        p.wait()
    except subprocess.TimeoutExpired:
        p.kill()
        stdout, stderr = p.communicate()
        


    #p.terminate()
    p.kill()




def install_apk(package_name, apk_file):
    if not os.path.exists(apk_file):
        print(f"Error: APK file {apk_file} not found.")
        return
    apk_name = os.path.basename(apk_file)
    cmd = f"adb shell pm list packages | grep {package_name}"
    
    #result = subprocess.run(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    p = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

    try:
        stdout, stderr = p.communicate(timeout=60)
        p.wait()
    except subprocess.TimeoutExpired:
        p.kill()
        stdout, stderr = p.communicate()
        

    
    p.kill()
    
    if package_name.encode() in stdout:
        print(f"INFO: Package {package_name} already exists on device.")
        return
    cmd = f"adb install -r -g {apk_file}"
    
    #result = subprocess.run(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    
    p = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

    try:
        stdout, stderr = p.communicate(timeout=900)
        p.wait()
    except subprocess.TimeoutExpired:
        p.kill()
        stdout, stderr = p.communicate()
        

    #p.terminate()
    p.kill()
    if "Success" not in stdout.decode("utf-8"):
        print(f"Error: Failed to install APK file {apk_name}.\nDynamic analysis of this apk will be skipped")
        print(stderr.decode("utf-8"))
        return
    print(f"APK file {apk_name} installed successfully.")


def uninstall_apk(package_name):
    cmd = f"adb shell pm list packages | grep {package_name}"
    #result = subprocess.run(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    p = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

    try:
        stdout, stderr = p.communicate(timeout=900)
        p.wait()
    except subprocess.TimeoutExpired:
        p.kill()
        stdout, stderr = p.communicate()
        

    #p.terminate()
    p.kill()
    
    if package_name.encode() not in stdout:
        #print(f"Error: Package {package_name} does not exist on device.")
        return
    cmd = f"adb uninstall {package_name}"
    
    #result = subprocess.run(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    p = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

    try:
        stdout, stderr = p.communicate(timeout=900)
        p.wait()
    except subprocess.TimeoutExpired:
        p.kill()
        stdout, stderr = p.communicate()

    #p.terminate()
    p.kill()
    
    if "Success" not in stdout.decode("utf-8"):
        print(f"Error: Failed to uninstall package {package_name}.\nPlease uninstall {package_name} yourself later")
        print(stderr.decode("utf-8"))
        return
    print(f"Package {package_name} uninstalled successfully.")






def start_app(package_name,main_activity):
    
    cmd = f"adb shell am start -n {package_name}/{main_activity}"
    p = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

    try:
        stdout, stderr = p.communicate(timeout=900)
        p.wait()
    except subprocess.TimeoutExpired:
        p.kill()
        stdout, stderr = p.communicate()

    p.kill()
    return stdout.decode("utf-8").strip()


def stop_app(package_name):
    
    cmd = f"adb shell am force-stop {package_name}"
    #process = subprocess.Popen(cmd.split(), stdout=subprocess.PIPE)
    #output, error = process.communicate()
    p = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

    try:
        stdout, stderr = p.communicate(timeout=900)
        p.wait()
    except subprocess.TimeoutExpired:
        p.kill()
        stdout, stderr = p.communicate()


    #p.terminate()
    p.kill()
    return stdout.decode("utf-8").strip()



def get_target_pid(package_name):
   
    cmd = f"adb shell ps | grep {package_name}"
    p = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

    try:
        stdout, stderr = p.communicate(timeout=900)
        p.wait()
    except subprocess.TimeoutExpired:
        p.kill()
        stdout, stderr = p.communicate()

    p.kill()

    if stdout:
        output = stdout.decode("utf-8").strip()
        pid = output.split()[1]
        return pid
    else:
        return None




def check_log(pid):
    
    cmd = f"adb logcat -d | grep {pid} | grep SYSTEM"
    p = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

    try:
        stdout, stderr = p.communicate(timeout=900)
        p.wait()
    except subprocess.TimeoutExpired:
        p.kill()
        stdout, stderr = p.communicate()

    p.kill()

    if stdout:
        output = stdout.decode("utf-8").strip()
        return output
    else:
        return False




def smali_bak_dex(apk_file_path, smali_jar_path):
    
    smali_dir_path = os.path.join(os.path.dirname(apk_file_path), 'smali')
    smaliList = []
    traverse_folder_smali(smali_dir_path, smaliList)

   
    finalDex_path = os.path.join(os.path.dirname(apk_file_path), 'finalDex')
    if not os.path.exists(finalDex_path):
        os.makedirs(finalDex_path)

    batch_size = 10000
    num_batches = math.ceil(len(smaliList) / batch_size)
    start_index = 0
    index = 0
    

    while start_index < len(smaliList):
        
        end_index = min(start_index + batch_size, len(smaliList))
        batch_smali_list = smaliList[start_index:end_index]

        
        batch_smali_paths = [f"./{filename}" for filename in batch_smali_list]
        output_file = os.path.join(finalDex_path, f"classes{index + 1}.dex")

        command = ['java', '-jar', smali_jar_path, 'assemble'] + batch_smali_paths + ['-o', output_file]

        while True:
            try:
                print(len(batch_smali_paths))
                p = subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

                try:
                    stdout, stderr = p.communicate(timeout=900)
                    p.wait()
                except subprocess.TimeoutExpired:
                    p.kill()
                    stdout, stderr = p.communicate()
                    
                if p.returncode != 0:
                    print(f'Error: {stderr.decode()}')
                    
                    print("TOO MUCH")
                    batch_size = int(batch_size / 2)
                    if batch_size < 2:
                        start_index = start_index + 1
                        if start_index >= len(smaliList):
                            raise ValueError("Unable to compile remaining smali files")
                    
                    end_index = min(start_index + batch_size, len(smaliList))
                    batch_smali_list = smaliList[start_index:end_index]
                    
                    batch_smali_paths = [f"./{filename}" for filename in batch_smali_list]
                    output_file = os.path.join(finalDex_path, f"classes{index + 1}.dex")
                    
                    command = ['java', '-jar', smali_jar_path, 'assemble'] + batch_smali_paths + ['-o', output_file]
                    continue

                #p.terminate()
                p.kill()
                
                
                batch_size = 10000
                index = index + 1
                break
            
            except Exception as e:
                
                print("TOO MUCH")
                batch_size = int(batch_size / 2)
                if batch_size < 2:
                    start_index = start_index + 1
                    if start_index >= len(smaliList):
                        raise ValueError("Unable to compile remaining smali files")
                
                end_index = min(start_index + batch_size, len(smaliList))
                batch_smali_list = smaliList[start_index:end_index]
                
                batch_smali_paths = [f"./{filename}" for filename in batch_smali_list]
                output_file = os.path.join(finalDex_path, f"classes{index + 1}.dex")
                
                command = ['java', '-jar', smali_jar_path, 'assemble'] + batch_smali_paths + ['-o', output_file]
                continue
            else:
                break
        start_index = end_index

def newLine():
    print("\n")

