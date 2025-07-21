#!/bin/bash

sudo echo "Optimising Your system...."

sudo cp change-mac.sh /usr/local/bin/

sudo cp macchanger.service /etc/systemd/system/

sudo systemctl daemon-reexec

sudo systemctl daemon-reload

sudo systemctl enable macchanger.service

sudo systemctl start macchanger.service

sudo echo "[✔] MAC randomizer service installed and running."

