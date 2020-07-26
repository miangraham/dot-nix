{ pkgs, ... }:
let
  emacsMine = import ../common/emacs.nix {pkgs=pkgs;};
  startSwayScript = import ./startsway.nix {pkgs=pkgs;};
in
{
  environment.systemPackages = with pkgs; [
    alacritty
    audacity
    awscli
    bzip2
    chromium
    cmus
    emacsMine
    evince
    exa
    feh
    ffmpeg
    firefox-wayland
    gawk
    gimp
    git
    gnome3.adwaita-icon-theme
    gnupg
    graphviz
    grim
    gzip
    htop
    imagemagick
    killall
    krita
    lftp
    mu
    neofetch
    niv
    pamixer
    pandoc
    pavucontrol
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
    starship
    terraform
    terraform-providers.aws
    tdesktop # telegram client
    tmux
    unrar
    unzip
    valgrind
    vim
    vlc
    vscode
    watch
    wget
    wofi
    zip

    python38Packages.glances

    startSwayScript
  ];
}
