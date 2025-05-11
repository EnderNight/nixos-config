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
      python
      dart
      java
      go
      cpp
      c_sharp
      bash
      fish
    ];

    settings = {
      highlight.enable = true;
    };
  };
}
