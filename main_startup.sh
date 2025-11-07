#!/bin/bash
set -euo pipefail

HARDWARE_SCRIPT=$1

# Hardware-specific configuration
chmod +x ./$HARDWARE_SCRIPT
./$HARDWARE_SCRIPT

# Install system dependencies
bash ./installation_common.sh

# Install BLITZ software
bash ./installation_blitz.sh

# Install Autobahn
bash ./installation_autobahn.sh

# Post-installation setup
bash ./post_install.sh