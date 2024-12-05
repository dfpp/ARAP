import os
import json
import shutil
import subprocess
import stat
import time
import select
import threading
import queue
import re
import xml.etree.ElementTree as ET
from dynamic_GUI_testing import unit_dynamic_testing


def enqueue_output(pipe, output_queue):
    """
    将子进程的输出流逐行读取并放入队列中。
    """
    try:
        for line in iter(pipe.readline, ''):
            output_queue.put(line)
    except ValueError:
        pass  # 忽略由于管道关闭引发的异常
    finally:
        pipe.close()


def force_remove_dir(path):
    """
    强制删除目录及其所有内容，即使文件被占用或权限不足。
    """
    if os.path.exists(path):
        print(f"Directory {path} exists. Deleting...")

        for root, dirs, files in os.walk(path, topdown=False):
            # 先删除文件
            for file in files:
                file_path = os.path.join(root, file)
                try:
                    os.chmod(file_path, stat.S_IWRITE)  # 修改文件权限
                    os.remove(file_path)  # 删除文件
                except Exception as e:
                    print(f"Failed to delete file {file_path}: {e}")

            # 再删除目录
            for dir in dirs:
                dir_path = os.path.join(root, dir)
                try:
                    os.rmdir(dir_path)  # 删除空目录
                except Exception as e:
                    print(f"Failed to delete directory {dir_path}: {e}")

        # 最后删除根目录
        try:
            os.rmdir(path)
        except Exception as e:
            print(f"Failed to delete root directory {path}: {e}")



# def decompile_apk(apk_path, output_dir):
#     apktool_path = r"C:\apktool\apktool.bat"
# 
#     force_remove_dir(output_dir)
#     os.makedirs(output_dir, exist_ok=True)
# 
#     try:
#         process = subprocess.Popen(
#             [apktool_path, "d", apk_path, "-o", output_dir, "-f"],
#             stdout=subprocess.PIPE,
#             stderr=subprocess.PIPE,
#             universal_newlines=True,
#             bufsize=1  # 禁用缓冲，实时输出
#         )
# 
#         # 实时打印子进程的标准输出
#         for line in iter(process.stdout.readline, ""):
#             print(f"[apktool]: {line.strip()}")
# 
#         # 打印子进程错误输出
#         stderr_output = process.stderr.read()
#         if stderr_output:
#             print(f"[apktool-error]: {stderr_output.strip()}")
# 
#         # 检查返回码
#         if process.returncode != 0:
#             raise subprocess.CalledProcessError(process.returncode, process.args)
# 
#         print(f"APK successfully decompiled to {output_dir}")
#     except subprocess.CalledProcessError as e:
#         print(f"Error during decompilation: {e}")
#         raise
#     except Exception as e:
#         print(f"Unexpected error: {e}")
#         raise
#     finally:
#         if process and process.poll() is None:
#             print("Terminating subprocess due to an unexpected error.")
#             process.terminate()

def decompile_apk(apk_path, output_dir, timeout=10):
    """
    使用 apktool 反编译 APK 文件。
    如果 output_dir 已存在，则删除后重新创建。
    使用队列和线程实现非阻塞读取，并增加超时机制。
    """
    apktool_path = r"C:\apktool\apktool.bat"  # 指定 apktool.bat 的完整路径

    force_remove_dir(output_dir)
    os.makedirs(output_dir, exist_ok=True)

    try:
        # 启动子进程
        process = subprocess.Popen(
            [apktool_path, "d", apk_path, "-o", output_dir, "-f"],
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            universal_newlines=True
        )

        # 使用队列存储输出
        stdout_queue = queue.Queue()
        stderr_queue = queue.Queue()

        # 启动线程异步读取 stdout 和 stderr
        stdout_thread = threading.Thread(target=enqueue_output, args=(process.stdout, stdout_queue))
        stderr_thread = threading.Thread(target=enqueue_output, args=(process.stderr, stderr_queue))
        stdout_thread.daemon = True
        stderr_thread.daemon = True
        stdout_thread.start()
        stderr_thread.start()

        last_output_time = time.time()  # 记录上次输出时间
        while True:
            try:
                # 尝试从队列中获取输出
                stdout_line = stdout_queue.get_nowait()
                if stdout_line:
                    print(f"[apktool]: {stdout_line.strip()}")
                    last_output_time = time.time()  # 重置时间
            except queue.Empty:
                pass

            try:
                stderr_line = stderr_queue.get_nowait()
                if stderr_line:
                    print(f"[apktool-error]: {stderr_line.strip()}")
            except queue.Empty:
                pass

            # 检查超时
            if time.time() - last_output_time > timeout:
                print("[apktool]: No new output detected for 10 seconds. Assuming decompilation is complete.")
                break

            # 检查子进程是否已结束
            if process.poll() is not None:
                break

        # 强制结束线程和子进程，无需检查返回码
        if process.poll() is None:
            process.terminate()

        print(f"APK successfully decompiled to {output_dir}")
    except Exception as e:
        print(f"Unexpected error: {e}")
        raise
    finally:
        # 确保资源释放
        try:
            process.stdout.close()
            process.stderr.close()
        except Exception as e:
            print(f"Error while closing streams: {e}")


def analyze_atg(decompiled_dir):
    """
    静态分析反编译目录以提取 ATG。
    """
    manifest_path = os.path.join(decompiled_dir, "AndroidManifest.xml")
    if not os.path.exists(manifest_path):
        print("AndroidManifest.xml not found, analysis failed.")
        return None

    # 提取所有的 Activity 信息
    activities = []
    activity_map = {}
    with open(manifest_path, "r", encoding="utf-8") as manifest:
        for line in manifest:
            if "activity" in line and "android:name" in line:
                start = line.find("android:name=\"") + len("android:name=\"")
                end = line.find("\"", start)
                activity_name = line[start:end]
                if activity_name.startswith("."):
                    # 处理相对路径的 Activity 名称，补全包名
                    package_name = get_package_name(manifest_path)
                    activity_name = package_name + activity_name
                activities.append(activity_name)
                activity_map[activity_name] = []

    # 遍历 smali 文件夹，提取调用关系
    smali_dir = os.path.join(decompiled_dir, "smali")
    if os.path.exists(smali_dir):
        for root, _, files in os.walk(smali_dir):
            for file in files:
                if file.endswith(".smali"):
                    smali_path = os.path.join(root, file)
                    parse_smali_file(smali_path, activities, activity_map)

    return activity_map


def parse_smali_file(smali_path, activities, activity_map):
    """
    解析单个 smali 文件，提取调用关系。
    """
    try:
        with open(smali_path, "r", encoding="utf-8") as smali_file:
            content = smali_file.readlines()
    except Exception as e:
        print(f"Error reading smali file {smali_path}: {e}")
        return

    current_class = None
    # 使用正则表达式提取类名
    class_pattern = re.compile(r"^\.class.*?L([\w/$]+);")
    invoke_pattern = re.compile(r"invoke-\w+ .*?L([\w/$]+);->([\w$]+)\(")

    for line in content:
        # 检测类声明
        if current_class is None:
            class_match = class_pattern.search(line)
            if class_match:
                current_class = class_match.group(1).replace("/", ".")

        # 检测方法调用
        invoke_match = invoke_pattern.search(line)
        if invoke_match:
            target_class = invoke_match.group(1).replace("/", ".")
            if target_class in activities:
                # 将调用关系添加到映射中
                if current_class and current_class in activities:
                    if target_class not in activity_map[current_class]:
                        activity_map[current_class].append(target_class)


def get_package_name(manifest_path):
    """
    从 AndroidManifest.xml 中提取包名。
    """
    with open(manifest_path, "r", encoding="utf-8") as manifest:
        for line in manifest:
            if "package=" in line:
                start = line.find("package=\"") + len("package=\"")
                end = line.find("\"", start)
                return line[start:end]
    return ""



def save_atg_json(atg, output_path):
    """
    将 ATG 数据保存为 JSON 文件，移除空列表项。
    """
    try:
        # 过滤掉空列表项
        filtered_atg = {k: v for k, v in atg.items() if v}
        
        with open(output_path, "w", encoding="utf-8") as f:
            json.dump(filtered_atg, f, indent=4)
        
        print(f"ATG JSON saved to {output_path}")
    except Exception as e:
        print(f"Error saving ATG JSON: {e}")
        raise



def process_apk(
    apk_path,
    tmp_dir="data/tmp",
    atg_output_dir="data/activity_atg",
    deviceId="emulator-5554",
    deeplinks_json="data/deeplinks_params.json",
    log="data/visited_rate/A.txt"
):
    """
    主流程：处理 APK，生成反编译文件夹和 ATG JSON，并调用 unit_dynamic_testing。
    """
    apk_name = os.path.splitext(os.path.basename(apk_path))[0]
    apk_tmp_dir = os.path.join(tmp_dir, apk_name)
    atg_output_path = os.path.join(atg_output_dir, f"{apk_name}.json")

    os.makedirs(tmp_dir, exist_ok=True)
    os.makedirs(atg_output_dir, exist_ok=True)

    # 反编译 APK
    decompile_apk(apk_path, apk_tmp_dir)
    print("decompile_apk OK!")

    # 分析 ATG
    atg = analyze_atg(apk_tmp_dir)
    if atg is None:
        print("Failed to analyze ATG.")
        return

    # 保存 ATG JSON
    save_atg_json(atg, atg_output_path)

    # 调用动态 GUI 测试
    unit_dynamic_testing(deviceId, apk_path, atg_output_path, deeplinks_json, log, reinstall=True)



if __name__ == "__main__":
    apk_path = r"data/repackaged_apks/A.apk"
    tmp_dir = r"data/tmp"
    atg_output_dir = r"data/activity_atg"

    process_apk(apk_path, tmp_dir, atg_output_dir)