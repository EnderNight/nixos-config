{ pkgs, ... }:

{
  imports = [
    ./config.nix

    ../firefox

    ../kitty

    ../dunst
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = false; # uwsm
  };

  home = {
    sessionVariables.NIXOS_OZONE_WL = "1";

    packages = with pkgs; [
      xdg-desktop-portal-gtk
      hyprpolkitagent
    ];
  };

}
