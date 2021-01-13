{ ... }:
let
  conf = import ./config.nix {};
  sources = import ../nix/sources.nix;

  pkgs = import sources.nixpkgs conf;
  unstable = import sources.nixpkgs-unstable conf;

  emacs = import ../common/emacs.nix {};
  startSwayScript = import ./startsway.nix {inherit pkgs;};
in
builtins.attrValues {
  inherit emacs startSwayScript;

  inherit (pkgs)
    alacritty
    audacity
    awscli
    bashmount
    # borgbackup
    bzip2
    cmus
    direnv
    element-desktop
    evince
    exa
    exfat
    feh
    ffmpeg
    gawk
    gimp
    git
    graphviz
    grim
    gzip
    home-manager
    htop
    hwinfo
    imagemagick
    killall
    # krita
    lftp
    libreoffice
    lshw
    mpv
    mu
    neofetch
    niv
    nix-direnv
    nix-index
    pamixer
    pandoc
    parted
    pavucontrol
    pciutils
    pstree
    pulseeffects
    qdirstat
    ranger
    ripgrep
    rofi
    rsync
    silver-searcher
    sqlite
    speedtest-cli
    sshfs-fuse
    terraform
    tdesktop # telegram client
    tldr
    tmux
    tree
    udiskie
    ungoogled-chromium
    unrar
    unzip
    valgrind
    vim
    vlc
    vscode
    watch
    wget
    wofi
    xdg_utils
    zip
    zeal
    zotero

    # js
    nodejs
    yarn

    adapta-gtk-theme
    arc-theme
    equilux-theme
    nordic
  ;
  inherit (pkgs.gitAndTools) git-subrepo;
  inherit (pkgs.gnome3) adwaita-icon-theme;
  inherit (pkgs.terraform-providers) aws;
  inherit (pkgs.texlive.combined) scheme-small;

  # rust
  rust = ((unstable.rustChannelOf { channel = "1.48.0"; }).rust.override {
    extensions = ["rust-src"];
  });

  inherit (unstable)
    cargo-release
    pkg-config
    gcc
    glib
    capnproto
    firefox-wayland
    youtube-dl
    godot
  ;

  inherit (unstable.glib) dev;

  inherit (unstable.gst_all_1)
    gstreamer
    gst-libav
    gst-plugins-base
    gst-plugins-good
    gst-plugins-bad
    gst-plugins-ugly
  ;

  # haskell
  # unstable.cabal-install
  # unstable.ghcid
  # unstable.haskell.compiler.ghc883
}
