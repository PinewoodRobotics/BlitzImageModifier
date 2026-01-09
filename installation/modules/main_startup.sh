#!/bin/bash
set -euo pipefail

cd /workspace/installation/modules/

# Install system dependencies
bash ./installation_common.sh

# Install BLITZ software
bash ./installation_blitz.sh

# Install Autobahn
bash ./installation_autobahn.sh

cd /workspace