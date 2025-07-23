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
