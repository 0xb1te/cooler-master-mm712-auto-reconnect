#!/bin/bash
# Cooler Master MM712 Auto-Reconnect Installer

# Copy the udev rule
sudo cp 99-mm712-reconnect.rules /etc/udev/rules.d/

# Copy the reconnection script
sudo cp reconnect-mm712.sh /usr/local/bin/
sudo chmod +x /usr/local/bin/reconnect-mm712.sh

# Reload udev rules
sudo udevadm control --reload-rules

echo "Installation complete. Unplug and replug your mouse to test the setup."
