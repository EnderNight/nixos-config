{ ... }:

{
  home.username = "matheo";
  home.homeDirectory = "/home/matheo";

  home.stateVersion = "24.11";

  programs.home-manager.enable = true;

  imports = [
    ../../modules/home/hyprland
  ];
}
