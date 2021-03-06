{ ... }:
let
  pkgs = import ../common/stable.nix {};
  rtmp = import ./rtmp.nix {inherit pkgs;};
  backup = import ./backup.nix {inherit pkgs;};
in
{
  inherit (backup) borgbackup;

  pipewire = {
    enable = true;
    #alsa.enable = true;
    #alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;
  };

  openssh.enable = true;

  earlyoom.enable = true;

  syncthing = {
    enable = true;
    openDefaultPorts = true;
    user = "ian";
    dataDir = "/home/ian/share";
    configDir = "/home/ian/.config/syncthing";
  };

  udisks2 = {
    enable = true;
  };

  coturn = {
    enable = false;
  };

  rabbitmq = {
    enable = false;
  };
}
