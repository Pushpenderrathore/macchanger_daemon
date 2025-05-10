# MAC Address Randomizer Daemon for Arch Linux

This project sets up a systemd service that **randomizes your MAC address at system boot** for two network interfaces (`enp7s0` and `wlp13s0`). It uses [`macchanger`](https://github.com/alobbs/macchanger) and works on **Arch Linux** or any `systemd`-based distro.

## 🛡️ Why Use It?

- Improve privacy by changing your MAC on every boot.
- Spoof MAC address to avoid tracking on public networks.
- Lightweight and runs automatically.

---

## ⚙️ Setup Instructions

### 1. Install macchanger

```bash
sudo pacman -S macchanger

#Clone this repo

git clone https://github.com/yourusername/macchanger-daemon.git
cd macchanger-daemon

#Copy files to appropriate locations

sudo cp change-mac.sh /usr/local/bin/change-mac.sh
sudo chmod +x /usr/local/bin/change-mac.sh
sudo cp macchanger.service /etc/systemd/system/macchanger.service

#Enable the service

sudo systemctl daemon-reload
sudo systemctl enable macchanger.service
sudo systemctl start macchanger.service

# 🔁 Want to randomize MAC every 30 minutes?

- Create a systemd timer! (Coming soon in this repo)

# ✨ Contributions Welcome

- Support for more interfaces?

- Logs?

- AUR package?

- Cross-platform support?

- Feel free to fork and send PRs!



