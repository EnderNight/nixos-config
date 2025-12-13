{ ... }:
{
  imports = [
    ../../home-modules/shells/fish.nix
    ../../home-modules/shells/starship.nix

    ../../home-modules/clis/all.nix

    ../../home-modules/desktop-environments/hyprland

    ../../home-modules/applications/all.nix

    ../../home-modules/languages/flutter.nix

    ../../home-modules/todo.nix
  ];

  home.username = "matheo";
  home.homeDirectory = "/home/matheo";

  home.stateVersion = "25.05";
}
