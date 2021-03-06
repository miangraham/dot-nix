{ ... }:
let
  pkgs = import ../common/stable.nix {};

  emacs = import ../common/emacs.nix {};
  startSwayScript = import ./startsway.nix {inherit pkgs;};
in
builtins.attrValues {
  inherit emacs startSwayScript;

  inherit (pkgs)
    bashmount
    bzip2
    exfat
    file
    gawk
    git
    gzip
    home-manager
    htop
    hwinfo
    lshw
    nix-index
    pamixer
    parted
    pavucontrol
    pciutils
    psmisc
    # pulseeffects-legacy
    ripgrep
    rsync
    silver-searcher
    sqlite
    sshfs-fuse
    tree
    udiskie
    unrar
    unzip
    vim
    watch
    wget
    xdg-desktop-portal-wlr
    xdg_utils
    zip
  ;

  # rust
  # rust = ((unstable.rustChannelOf { channel = "1.49.0"; }).rust.override {
  #   extensions = ["rust-src"];
  # });

  # inherit (unstable)
  #   rustc
  #   cargo
  #   clippy
  #   rustfmt
  #   # rust-analyzer
  #   # rustcSrc
  #   # rustLibSrc

  #   cargo-release
  #   pkg-config
  #   gcc
  #   glib
  #   capnproto
  # ;

  # inherit (unstable.glib) dev;
}
