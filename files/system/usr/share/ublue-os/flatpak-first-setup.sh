#!/usr/bin/bash

set -oue pipefail

if ! flatpak --user remotes | grep -q flathub; then
        echo "Adding Flathub remote..."
        flatpak --user remote-add flathub --title "Flathub (user)" https://dl.flathub.org/repo/flathub.flatpakrepo
else
        echo "Flathub remote already exists."
fi

packages=(
    com.discordapp.Discord
    com.github.tchx84.Flatseal
    com.github.rafostar.Clapper
    com.heroicgameslauncher.hgl
    com.mattjakeman.ExtensionManager
    com.valvesoftware.Steam
    com.ranfdev.DistroShelf
    io.github.Faugus.faugus-launcher
    io.github.flattool.Warehouse
    io.missioncenter.MissionCenter
    io.podman_desktop.PodmanDesktop
    org.gnome.World.PikaBackup
    org.gnome.Papers
    org.gnome.baobab
    org.gnome.clocks
    org.gnome.gThumb
    org.mozilla.firefox
    org.mozilla.Thunderbird
    page.tesk.Refine
    sh.loft.devpod
)

echo "Installing Flatpak packages..."
flatpak --user install -y "${packages[@]}"

echo "Disabling the flatpak-first-setup.service..."
systemctl --user disable flatpak-first-setup.service

echo "Flatpak setup completed successfully."
