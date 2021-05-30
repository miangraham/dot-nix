{ ... }:
let
  pkgs = import ../common/stable.nix {};
in
{
  enable = true;
  package = pkgs.starship;
  settings = {
    aws.disabled = true;

    character = {
      style_success = "bold green";
      style_failure = "bold green";
      symbol = "λ";
    };

    cmd_duration.disabled = true;
    hostname.ssh_only = false;
    username.show_always = true;
  };
}
