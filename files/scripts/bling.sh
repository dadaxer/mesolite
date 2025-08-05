#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
echo 'Removing Karl...'
rm /usr/share/ublue-os/bluefin-logos/karl.png
rm /usr/share/ublue-os/bluefin-logos/symbols/karl
rm /usr/share/ublue-os/bluefin-logos/sixels/karl
echo 'Karl removed'

# echo 'Removing backgrounds...'
# rm -rf /usr/share/backgrounds/bluefin
# rm -rf /usr/share/gnome-background-properties/*bluefin.xml
# rm -rf /usr/share/gnome-background-properties/xe_space_needle.xml
# rm -rf /usr/share/gnome-background-properties/chicken.xml
# rm -rf /usr/share/gnome-background-properties/xe_clouds.xml
# rm -rf /usr/share/gnome-background-properties/xe_foothills.xml
# rm -rf /usr/share/gnome-background-properties/xe_space_needle.xml
# rm -rf /usr/share/gnome-background-properties/xe_sunset.xml
# echo 'Backgrounds removed'

# echo 'Removing vscode files...'
# rm -rf /etc/skel/.config/Code
# rm /etc/yum.repos.d/vscode.repo
# rm /usr/share/ublue-os/user-setup.hooks.d/10-vscode.sh
# echo 'files removed'
