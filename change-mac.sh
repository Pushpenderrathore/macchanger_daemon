#!/bin/bash

# MAC Randomizer Script - Dynamically detects interfaces and randomizes their MAC

while true; do
	echo "[+] Changing MAC address.. change loop..."

        # List all interfaces except 'lo' (loopback)
        interfaces=$(ip -o link show | awk -F': ' '{print $2}' | grep -v lo)
        
        for iface in $interfaces; do
            echo "[+] Changing MAC for interface: $iface"
        
            sudo ip link set "$iface" down && sudo macchanger -r "$iface" && sudo ip link set "$iface" up
        done

        echo "[+] Waiting 5 minutes before next change..."
        sleep 300 # 300 seconds = 5 minutes
done
