{ ... }:
{
  imports = [
    ../../home-modules/shell

    ../../home-modules/clis

    ../../home-modules/de
    ../../home-modules/de/hyprland

    ../../home-modules/applications

    ../../home-modules/todo.nix
  ];

  home.username = "matheo";
  home.homeDirectory = "/home/matheo";

  home.stateVersion = "25.05";
}
