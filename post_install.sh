#!/bin/bash
set -euo pipefail

sudo mv ./blitzprojstartup.sh /usr/local/bin/
sudo chmod +x /usr/local/bin/blitzprojstartup.sh
sudo mv ./blitz_project.service /etc/systemd/system/

sudo systemctl enable blitz_project.service