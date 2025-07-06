import os
import shutil

# Define a list of known malware signatures (for demonstration purposes)
MALWARE_SIGNATURES = ['malware1.exe', 'malware2.exe']

def scan_and_delete_malware(directory):
    for filename in os.listdir(directory):
        if filename in MALWARE_SIGNATURES:
            file_path = os.path.join(directory, filename)
            print(f"Malware found: {filename}. Deleting...")
            os.remove(file_path)  # Delete the malware file
        else:
            print(f"No malware found in: {filename}")

if __name__ == "__main__":
    directory_to_scan = '/path/to/your/directory'  # Specify the directory to scan
    scan_and_delete_malware(directory_to_scan)
