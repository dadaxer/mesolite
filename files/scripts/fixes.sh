#!/usr/bin/env bash

set -oue pipefail

# gnome-extensions module can't remove "Window List", so manual deletion it is.
rm -rf /usr/share/gnome-shell/extensions/window-list@gnome-shell-extensions.gcampax.github.com
