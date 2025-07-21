# MAC Address Randomizer Daemon for Linux-based Systems

![License](https://img.shields.io/badge/license-MIT-green) 
![Last Commit](https://img.shields.io/github/last-commit/Pushpenderrathore/macchanger-daemon) 
![Stars](https://img.shields.io/github/stars/Pushpenderrathore/macchanger-daemon?style=social)

This project sets up a systemd service that **randomizes your MAC address at system boot** for all type of network interfaces like (`enp7s0` and `wlp13s0`). It uses [`macchanger`](https://github.com/alobbs/macchanger) and works on **Arch Linux** or any `systemd` linux-based distro.

## 🛡️ Why Use It?

- Improve privacy by changing your MAC on every boot and with interval of every 5 minutes.
- Spoof MAC address to avoid tracking on public networks.
- Lightweight and portable on any linux based devices and runs automatically.

---

## ⚙️ Setup Instructions

### 1. Install macchanger

```bash

### For manual installation.  

sudo pacman -S macchanger 

### 2. Clone this repo

git clone https://github.com/yourusername/macchanger-daemon.git
cd macchanger-daemon

### 3. Copy files to appropriate locations

sudo cp change-mac.sh /usr/local/bin/change-mac.sh
sudo chmod +x /usr/local/bin/change-mac.sh
sudo cp macchanger.service /etc/systemd/system/macchanger.service

### 4. Enable the service

sudo systemctl daemon-reload
sudo systemctl enable macchanger.service
sudo systemctl start macchanger.service

## 🔁 Want to randomize MAC every 30 minutes?

- Create a systemd timer now available for linux based distros 

## ✨ Contributions Welcome

- Support for more interfaces?

- AUR package?

- Cross-platform support?

- Feel free to fork and send PRs!



