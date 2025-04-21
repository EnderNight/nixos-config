{ pkgs, ... }:

{
  imports = [
    ../services/sddm.nix
    ../services/pipewire.nix
  ];

  programs.hyprland = {
    enable = true;
  };

  environment.systemPackages = with pkgs; [
    xdg-desktop-portal-gtk
    hyprpolkitagent
  ];
}
