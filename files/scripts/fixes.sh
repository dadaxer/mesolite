#!/usr/bin/env bash

set -oue pipefail

# gnome-extensions module can't remove "Window List", so manual deletion it is.
if [ -d "/usr/share/gnome-shell/extensions/window-list@gnome-shell-extensions.gcampax.github.com" ]; then
  echo "Removing 'Window List' extension..."
  rm -rf /usr/share/gnome-shell/extensions/window-list@gnome-shell-extensions.gcampax.github.com || { echo "Failed to remove 'Window List' extension"; exit 1; }
fi

rm /usr/share/thumbnailers/gsf-office.thumbnailer
