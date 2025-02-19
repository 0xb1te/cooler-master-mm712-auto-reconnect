# Cooler Master MM712 Auto-Reconnect

Tired of using your MM712 mouse and having to plug-unplug manually your usb dongle? This script does that for you!

This repository contains a script and `udev` rule to automatically reconnect the Cooler Master MM712 mouse when it gets disconnected on Linux.

Shoutout to sacha-sokoloski on reddit: https://www.reddit.com/r/linuxquestions/comments/10vts41/fixing_cooler_master_dongles_on_linux_seeking/

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/0xb1te/cooler-master-mm712-auto-reconnect.git
   cd cooler-master-mm712-auto-reconnect
   ```
2. Run the installation script:

```bash
chmod +x install.sh
sudo ./install.sh
```

3. Unplug and replug your mouse to test the setup

### Uninstallation

Run the commands:

```bash
sudo rm /etc/udev/rules.d/99-mm712-reconnect.rules /usr/local/bin/reconnect-mm712.sh
sudo udevadm control --reload-rules
```

### License

See LICENSE for more information
