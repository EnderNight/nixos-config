{ pkgs, ... }:

{
  programs.nixvim.plugins.treesitter = {
    enable = true;

    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      c
      lua
      vim
      vimdoc
      query
      markdown
      markdown_inline
      regex
      nix
    ];

    settings = {
      highlight.enable = true;
    };
  };
}
