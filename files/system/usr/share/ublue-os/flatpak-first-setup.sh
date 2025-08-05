#!/usr/bin/bash

set -oue pipefail

flatpak --user remote-add --if-not-exists flathub --title "Flathub (user)" https://dl.flathub.org/repo/flathub.flatpakrepo

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

flatpak --user install -y "${packages[@]}"
