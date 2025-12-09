{ ... }:
{
  imports = [
    ./modules/shell

    ./modules/clis

    ./modules/de
    ./modules/de/hyprland

    ./modules/applications

    ./modules/todo.nix
  ];

  home.username = "matheo";
  home.homeDirectory = "/home/matheo";

  programs.home-manager.enable = true;

  home.stateVersion = "25.05";
}
