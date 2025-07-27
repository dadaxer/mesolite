# Mesolite Linux Desktop build with BlueBuild Template &nbsp; [![bluebuild build badge](https://github.com/dadaxer/mesolite/actions/workflows/build.yml/badge.svg)](https://github.com/dadaxer/mesolite/actions/workflows/build.yml)

Mesolite is a [Bluefin-DX](https://projectbluefin.io/) based variant with some customisations.
Main changes are native Steam (with Mangohud) and some minor changes to fit my needs.

### Installed Packages

#### Native Packages
- Blender
- Godot
- Input Remapper
- Lutris
- Mangohud
- Steam

#### Flatpak Packages
- com.github.tchx84.Flatseal
- com.mattjakeman.ExtensionManager
- io.github.flattool.Warehouse
- org.gnome.Loupe
- org.gnome.Papers
- page.tesk.Refine

## Installation

> [!WARNING]
> [This is an experimental feature](https://www.fedoraproject.org/wiki/Changes/OstreeNativeContainerStable), try at your own discretion.

To rebase an existing atomic [Fedora Silverblue](https://fedoraproject.org/atomic-desktops/silverblue/) or [Bluefin](https://projectbluefin.io/) installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/dadaxer/mesolite:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/dadaxer/mesolite:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```

The `latest` tag will automatically point to the latest build. That build will still always use the Fedora version specified in `recipe.yml`, so you won't get accidentally updated to the next major version.

## ISO

At the moment there is no ISO for Mesolite, maybe in the future. Rebasing from Fedora Silverblue or Bluefin is recommended.

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/dadaxer/mesolite
```
