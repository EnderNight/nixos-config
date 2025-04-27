{ pkgs, ... }:

{
  imports = [
    ./options.nix

    ./plugins
  ];

  programs.nixvim = {
    enable = true;

    extraPackages = with pkgs; [
      ripgrep
      wl-clipboard
    ];

    globals = {
      mapleader = " ";
      maplocalleader = "\\";
    };
  };
}
