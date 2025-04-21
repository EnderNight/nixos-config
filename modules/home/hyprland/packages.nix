{ pkgs, ... }:

{
  home.packages = with pkgs; [
    xdg-desktop-portal-gtk
    hyprpolkitagent
  ];
}
