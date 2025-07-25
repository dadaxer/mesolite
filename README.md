# Mesolite Linux Desktop build with BlueBuild Template &nbsp; [![bluebuild build badge](https://github.com/blue-build/template/actions/workflows/build.yml/badge.svg)](https://github.com/blue-build/template/actions/workflows/build.yml)

Mesolite is a [Bluefin-DX](https://projectbluefin.io/) based variant with some customisations.
Main changes are native Steam (with Mangohud) and some minor changes to fit my needs.

## Installed Packages

The following packages are installed in the Mesolite image based on the `recipe.yml`:

- **Blender**: A free and open-source 3D computer graphics software toolset used for creating animated films or video games.
- **Godot**: An open-source, cross-platform game engine to create your own games using pure code (GDScript, similar to Python), C#, visual script, or visual style node-based programming.
- **Input Remapper**: A tool for remapping input devices in Linux. It allows you to change the key combinations and button actions of your keyboard, mouse, and other input devices.
- **Mangohud**: A compatibility layer that makes it easy to run Windows games with high-performance graphics in Wine on Linux without losing functionality or performance.
- **Steam**: The popular digital distribution platform for video games developed by Valve Corporation.

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
