#!/bin/bash

set -e

RULE_FILE="/etc/udev/rules.d/99-ftdi-d2xx.rules"

echo "Installing FTDI D2XX udev rules..."

sudo tee "$RULE_FILE" > /dev/null <<'EOF'
# Allow D2XX access to specific FTDI devices

ACTION=="add", SUBSYSTEM=="usb", ATTR{idVendor}=="0403", ATTR{idProduct}=="6015", ATTR{product}=="GSDRobotPlatform", MODE="0666", TAG+="uaccess"

ACTION=="bind", SUBSYSTEM=="usb", DRIVER=="ftdi_sio", ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6015", ATTRS{product}=="GSDRobotPlatform", RUN+="/bin/sh -c 'echo %k > /sys/bus/usb/drivers/ftdi_sio/unbind'"

ACTION=="add", SUBSYSTEM=="usb", ATTR{idVendor}=="0403", ATTR{idProduct}=="6015", ATTR{product}=="ThunderBolt", MODE="0666", TAG+="uaccess"

ACTION=="bind", SUBSYSTEM=="usb", DRIVER=="ftdi_sio", ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6015", ATTRS{product}=="ThunderBolt", RUN+="/bin/sh -c 'echo %k > /sys/bus/usb/drivers/ftdi_sio/unbind'"
EOF

echo "Reloading udev rules..."
sudo udevadm control --reload-rules
sudo udevadm trigger

echo
echo "Done."
echo "Unplug and reconnect the FTDI devices."
echo
echo "To verify:"
echo "  dmesg | grep -i ftdi"
echo "  ls /dev/ttyUSB*"
echo
echo "The devices should briefly attach and then automatically unbind from ftdi_sio."
