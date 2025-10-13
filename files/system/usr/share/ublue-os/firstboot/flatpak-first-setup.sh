#!/usr/bin/bash

set -oue pipefail

if ! flatpak --system remotes | grep -q flathub; then
        echo "Adding Flathub remote..."
        flatpak --system remote-add flathub --title "Flathub (system)" https://dl.flathub.org/repo/flathub.flatpakrepo
else
        echo "Flathub remote already exists."
fi

packages=(
    com.discordapp.Discord
    com.github.rafostar.Clapper
    com.github.tchx84.Flatseal
    com.heroicgameslauncher.hgl
    com.mattjakeman.ExtensionManager
    com.ranfdev.DistroShelf
    com.valvesoftware.Steam
    io.github.flattool.Warehouse
    io.missioncenter.MissionCenter
    io.podman_desktop.PodmanDesktop
    org.altlinux.Tuner
    org.gnome.baobab
    org.gnome.clocks
    org.gnome.gThumb
    org.gnome.Papers
    org.gnome.TextEditor
    org.gnome.World.PikaBackup
    org.mozilla.firefox
    org.mozilla.Thunderbird
    sh.loft.devpod
)

echo "Installing Flatpak packages..."
flatpak --system install -y "${packages[@]}"

echo "Disabling the flatpak-first-setup.service..."
systemctl --system disable flatpak-first-setup.service

echo "Flatpak setup completed successfully."
