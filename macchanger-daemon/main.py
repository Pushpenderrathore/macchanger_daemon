# macchanger_daemon/main.py

import subprocess
import time
import re
import os

def get_interfaces():
    output = subprocess.check_output(["ip", "-o", "link", "show"]).decode()
    return [line.split(": ")[1].split("@")[0] for line in output.splitlines() if "lo" not in line]

def change_mac(interface):
    subprocess.call(["sudo", "ip", "link", "set", interface, "down"])
    subprocess.call(["sudo", "macchanger", "-r", interface])
    subprocess.call(["sudo", "ip", "link", "set", interface, "up"])

def main():
    previous_status = {}
    while True:
        interfaces = get_interfaces()
        for iface in interfaces:
            # Check if interface is up and has IP
            result = subprocess.run(["ip", "addr", "show", iface], capture_output=True, text=True)
            connected = "inet " in result.stdout
            prev = previous_status.get(iface, True)
            if not prev and connected:
                print(f"[+] Detected reconnection on {iface}, changing MAC...")
                change_mac(iface)
            previous_status[iface] = connected
        time.sleep(300)  # 5-minute interval

if __name__ == "__main__":
    main()
