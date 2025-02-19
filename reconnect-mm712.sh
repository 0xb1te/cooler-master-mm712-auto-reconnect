#!/bin/bash
# Reconnect Cooler Master Mice Dongle

# Find the device by name
DEVICE_INFO=$(lsusb | grep "Cooler Master Co., Ltd. Cooler Master Mice Dongle")
if [ -z "$DEVICE_INFO" ]; then
    echo "Device not found."
    exit 1
fi

# Extract Bus and Device numbers
BUS=$(echo "$DEVICE_INFO" | awk '{print $2}')
DEVICE=$(echo "$DEVICE_INFO" | awk '{print $4}' | tr -d ':')

# Unbind the USB device
echo "$BUS-$DEVICE" | sudo tee /sys/bus/usb/drivers/usb/unbind

# Wait for a moment
sleep 2

# Rebind the USB device
echo "$BUS-$DEVICE" | sudo tee /sys/bus/usb/drivers/usb/bind

echo "Cooler Master Mice Dongle reconnected."