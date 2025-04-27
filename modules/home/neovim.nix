{ inputs, pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
  };

  xdg.configFile."nvim".source = inputs.nvim-config.configDir;

  home.packages = with pkgs; [
    ripgrep
    wl-clipboard
    luarocks
  ];
}
