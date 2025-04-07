#!/bin/bash

# MAC Randomizer Script

# Interface 1
ip link set enp7s0 down
macchanger -r enp7s0
ip link set enp7s0 up

# Interface 2
ip link set wlp13s0 down
macchanger -r wlp13s0
ip link set wlp13s0 up

