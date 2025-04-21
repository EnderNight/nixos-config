{ ... }:

{
  home.username = "matheo";
  home.homeDirectory = "/home/matheo";

  home.stateVersion = "24.11";

  programs.home-manager.enable = true;

  imports = [
    ../../modules/home/firefox.nix

    ../../modules/home/kitty.nix
    ../../modules/home/fish.nix
    ../../modules/home/starship.nix
    ../../modules/home/eza.nix
    ../../modules/home/zoxide.nix
  ];
}
