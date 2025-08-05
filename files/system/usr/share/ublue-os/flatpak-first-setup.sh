#!/usr/bin/bash

set -oue pipefail

flatpak --user remote-add --if-not-exists flathub --title "Flathub (user)" https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak --user install -y com.github.tchx84.Flatseal \
                        com.github.rafostar.Clapper \
                        com.heroicgameslauncher.hgl \
                        com.mattjakeman.ExtensionManager \
                        com.valvesoftware.Steam \
                        io.github.Faugus.faugus-launcher \
                        io.github.flattool.Warehouse \
                        io.missioncenter.MissionCenter \
                        io.podman_desktop.PodmanDesktop \
                        org.gnome.World.PikaBackup \
                        org.gnome.Papers \
                        org.gnome.clocks \
                        org.mozilla.firefox \
                        org.mozilla.Thunderbird \
                        page.tesk.Refine \
                        sh.loft.devpod \
                        com.ranfdev.DistroShelf \
                        com.discordapp.Discord \
                        com.github.tchx84.Flatseal \
                        org.gnome.baobab \
                        org.gnome.gThumb \
                        org.freedesktop.Platform.VulkanLayer.MangoHud
