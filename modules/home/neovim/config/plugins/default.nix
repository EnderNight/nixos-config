{ ... }:

{
  imports = [
    ./colorscheme.nix
    ./treesitter.nix
    ./barbar.nix
    ./noice.nix
    ./lualine.nix
    ./telescope.nix
    ./cmp.nix
    # ./blink-cmp.nix
    ./which-key.nix
    ./sleuth.nix

    ./lsp.nix

    ./conform-nvim.nix
  ];
}
