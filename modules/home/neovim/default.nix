{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    extraPackages = with pkgs; [
      ripgrep
      wl-clipboard
    ];

    extraLuaConfig = lib.fileContents ./init.lua;
  };
}
