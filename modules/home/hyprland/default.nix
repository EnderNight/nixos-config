{ pkgs, ... }:

{
  imports = [
    ./config.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = false; # uwsm
  };

  home.sessionVariables.NIXOS_OZONE_WL = "1";
}
