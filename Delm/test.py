import os

def count_lines_in_py_files(root_dir='.'):
    total_lines = 0
    for current_root, _, files in os.walk(root_dir):
        for file in files:
            if file.endswith('.py'):
                file_path = os.path.join(current_root, file)
                try:
                    with open(file_path, 'r', encoding='utf-8') as f:
                        line_count = sum(1 for _ in f)
                        total_lines += line_count
                except (UnicodeDecodeError, FileNotFoundError):
                    # 进行简单的异常处理，跳过无法读取的文件
                    continue

    return total_lines

# Usage
total_lines = count_lines_in_py_files()
print(f"Total number of lines in .py files: {total_lines}")
