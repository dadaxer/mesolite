#!/usr/bin/bash

set -oue pipefail

flatpak --user remote-add --if-not-exists flathub --title "Flathub (user)" https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak --user install -y com.github.tchx84.Flatseal \
                        com.mattjakeman.ExtensionManager \
                        io.missioncenter.MissionCenter \
                        io.github.flattool.Warehouse \
                        org.mozilla.firefox \
                        org.mozilla.Thunderbird \
                        page.tesk.Refine
