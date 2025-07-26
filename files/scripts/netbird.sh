#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Install netbird vpn using the official installation script
curl -fsSL https://pkgs.netbird.io/install.sh | sh
