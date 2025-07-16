#!/bin/bash

# MAC Randomizer Script

while true; do
	echo "[+] Changing MAC address.."

        # Interface 1
        ip link set enp7s0 down
        macchanger -r enp7s0
        ip link set enp7s0 up

        # Interface 2
        ip link set wlan0 down
        macchanger -r wlan0
        ip link set wlan0 up

        echo "[+] MAC addresses changed. Waiting 5 minutes..."
        sleep 300 # 300 seconds = 5 minutes
done

