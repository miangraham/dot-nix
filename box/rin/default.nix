{ ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../system/nixos.nix
  ];
  # system.stateVersion = "20.03";
  networking.hostName = "rin";
  # networking.interfaces.enp5s0.useDHCP = true;
  # networking.interfaces.wlp4s0.useDHCP = true;
}
