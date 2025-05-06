{ ... }:

{
  home.username = "matheo";
  home.homeDirectory = "/home/matheo";

  home.stateVersion = "24.11";

  programs.home-manager.enable = true;

  imports = [
    ../../modules/home/ssh.nix

    ../../modules/home/applications

    ../../modules/home/kitty.nix
    ../../modules/home/fish.nix
    ../../modules/home/starship.nix
    ../../modules/home/eza.nix
    ../../modules/home/zoxide.nix
    ../../modules/home/bat.nix
    ../../modules/home/yazi.nix
    ../../modules/home/glow.nix
    ../../modules/home/ripgrep.nix
    ../../modules/home/fzf.nix
    ../../modules/home/btop.nix

    ../../modules/home/git.nix

    ../../modules/home/neovim

    ../../modules/home/games
  ];
}
