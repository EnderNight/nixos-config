{ pkgs, ... }:

{
  programs.nixvim = {
    globals = {
      mapleader = " ";
      maplocalleader = "\\";
    };
  };

  imports = [
    ./options.nix

    ./plugins
  ];
}
