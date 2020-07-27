# .nix

Nix configuration for my personal machines. Manages dev environments for NixOS and Darwin.

## Prerequisites

Requires a system-level [NixOS](https://nixos.org/download.html) or [nix-darwin](https://github.com/LnL7/nix-darwin) installation. `nix-env` alone is not enough.

## Install System (Global)

```console
$ git clone https://github.com/miangraham/dot-nix.git ~/.nix
$ cd ~/.nix
$ vim box/somebox/default.nix
$ ln -s box/somebox/default.nix ./configuration.nix
$ ./rebuild_system.sh
```

## Install Home (NixOS only)

```console
$ cd ~/.nix
$ ./install_home.sh
```

## Organization

| Location | Description |
| --- | --- |
| /box | Machine-specific config items and top-level entrypoints for linking to `./configuration.nix.` NixOS `hardware-configuration.nix` lives here. |
| /common | Shared configs used by all boxes. |
| /home | User packages. Currently used only by NixOS. |
| /nix | Pinned `nixpkgs` version data generated by `niv`. |
| /system | Shared system-level configs. |

## [License: CC0](./LICENSE)

[![License: CC0-1.0](https://licensebuttons.net/p/zero/1.0/80x15.png)](http://creativecommons.org/publicdomain/zero/1.0/)

To the extent possible under law, M. Ian Graham has waived all copyright and related or neighboring rights to dot-nix. This work is published from: Japan.
