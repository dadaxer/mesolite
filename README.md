# Mesolite Desktop build with BlueBuild &nbsp; [![bluebuild build badge](https://github.com/dadaxer/mesolite/actions/workflows/build.yml/badge.svg)](https://github.com/dadaxer/mesolite/actions/workflows/build.yml)

### Mesolite is a [Bluefin-DX](https://projectbluefin.io/) variant with some customizations.

## Installation

To rebase an existing atomic [Fedora Silverblue](https://fedoraproject.org/atomic-desktops/silverblue/) or [Bluefin](https://projectbluefin.io/) installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/dadaxer/mesolite:stable
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/dadaxer/mesolite:stable
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```

## ISO

At the moment there is no ISO for Mesolite, maybe in the future. Rebasing from Fedora Silverblue or Bluefin is recommended.

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/dadaxer/mesolite
```
