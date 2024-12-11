import os
import shutil
import ctypes
import psutil
import tempfile

def is_admin():
    try:
        return ctypes.windll.shell32.IsUserAnAdmin() == 1
    except:
        return False

def clear_directory(path):
    if os.path.exists(path):
        for root, dirs, files in os.walk(path):
            for file in files:
                try:
                    os.remove(os.path.join(root, file))
                except Exception as e:
                    print(f"Erro ao excluir arquivo: {e}")
            for dir in dirs:
                try:
                    shutil.rmtree(os.path.join(root, dir), ignore_errors=True)
                except Exception as e:
                    print(f"Erro ao excluir pasta: {e}")

def empty_trash():
    recycle_bin = "C:\\$Recycle.Bin"
    clear_directory(recycle_bin)

def clear_temp_files():
    base_path = "C:\\Users"
    for user_dir in os.listdir(base_path):
        temp_path = os.path.join(base_path, user_dir, "AppData", "Local", "Temp")
        if os.path.exists(temp_path):
            clear_directory(temp_path)
            try:
                open(os.path.join(temp_path, "vazio.txt"), 'w').close()
            except Exception as e:
                print(f"Erro ao criar vazio.txt em {temp_path}: {e}")

    windows_temp = tempfile.gettempdir()
    clear_directory(windows_temp)
    try:
        open(os.path.join(windows_temp, "vazio.txt"), 'w').close()
    except Exception as e:
        print(f"Erro ao criar vazio.txt em {windows_temp}: {e}")

def clear_logs():
    log_paths = [
        "C:\\Windows\\Logs\\CBS",
        "C:\\Windows\\Logs\\MoSetup",
        "C:\\Windows\\Panther",
        "C:\\Windows\\inf",
        "C:\\Windows\\Logs",
        "C:\\Windows\\SoftwareDistribution",
        "C:\\Windows\\Microsoft.NET",
    ]

    for path in log_paths:
        clear_directory(path)

def kill_processes():
    browsers = ["msedge.exe", "firefox.exe", "chrome.exe", "brave.exe", "vivaldi.exe"]
    for proc in psutil.process_iter(['name']):
        if proc.info['name'] in browsers:
            try:
                proc.terminate()
            except psutil.NoSuchProcess:
                pass

def clear_browser_cache():
    browsers_paths = {
        "Edge": "Microsoft\\Edge\\User Data\\Default",
        "Firefox": "Mozilla\\Firefox\\Profiles",
        "Chrome": "Google\\Chrome\\User Data\\Default",
        "Brave": "BraveSoftware\\Brave-Browser\\User Data\\Default",
        "Vivaldi": "Vivaldi\\User Data\\Default",
    }

    base_path = "C:\\Users"
    for browser, sub_path in browsers_paths.items():
        for user_dir in os.listdir(base_path):
            full_path = os.path.join(base_path, user_dir, "AppData", "Local", sub_path)
            if os.path.exists(full_path):
                clear_directory(full_path)

def clear_adobe_media_cache():
    base_path = "C:\\Users"
    for user_dir in os.listdir(base_path):
        adobe_path = os.path.join(base_path, user_dir, "AppData", "Roaming", "Adobe", "Common", "Media Cache files")
        if os.path.exists(adobe_path):
            clear_directory(adobe_path)

if __name__ == "__main__":
    if not is_admin():
        print("Por favor, execute este script como Administrador.")
        exit()

    kill_processes()
    empty_trash()
    clear_temp_files()
    clear_logs()
    clear_browser_cache()
    clear_adobe_media_cache()
    print("Limpeza concluída.")
