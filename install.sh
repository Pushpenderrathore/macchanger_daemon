#!/bin/bash

cp change-mac.sh /usr/local/bin/

cp macchanger.service /etc/systemd/system/

systemctl daemon-reexec

systemctl daemon-reload

systemctl enable macchanger.service

systemctl start macchanger.service

sudo echo "[✔] MAC randomizer service installed and running."

