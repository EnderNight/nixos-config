{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
  };

  home.packages = with pkgs; [
    gcc
    lua
    luarocks
    lua-language-server
    stylua

    nerd-fonts.fira-code
  ];

  xdg = {
    configFile = {
      "nvim" = {
        source = ../../dotfiles/nvim;
        recursive = true;
      };
    };
    mimeApps.defaultApplicationPackages = with pkgs; [
      neovim
    ];
  };
}
