#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Install netbird vpn using the official installation script
curl -fsSL https://pkgs.netbird.io/install.sh | sh

# tee /etc/yum.repos.d/netbird.repo <<EOF
# [netbird]
# name=netbird
# baseurl=https://pkgs.netbird.io/yum/
# enabled=1
# gpgcheck=0
# gpgkey=https://pkgs.netbird.io/yum/repodata/repomd.xml.key
# repo_gpgcheck=1
# EOF

# dnf config-manager addrepo -y --overwrite --from-repofile=/etc/yum.repos.d/netbird.repo
# dnf install netbird -y
