#!/bin/bash
set -euo pipefail

sudo rm -f /etc/udev/rules.d/90-usb-port-names.rules
sudo cp ./installation/system-patch/90-usb-port-names.rules /etc/udev/rules.d/90-usb-port-names.rules
sudo udevadm control --reload-rules
sudo udevadm trigger