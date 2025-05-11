#!/bin/bash

git clone https://github.com/yourusername/macchanger-daemon.git

cd macchanger-daemon

sudo cp change-mac.sh /usr/local/bin/

sudo chmod +x /usr/local/bin/change-mac.sh

sudo cp macchanger.service /etc/systemd/system/

#Enable the service

sudo systemctl daemon-reload
sudo systemctl enable macchanger.service
sudo systemctl start macchanger.service


