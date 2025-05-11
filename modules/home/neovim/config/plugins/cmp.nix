{ ... }:

{
  programs.nixvim.plugins = {
    web-devicons.enable = true;
    lspkind.enable = true;

    cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
        sources = [
          { name = "nvim_lsp"; }
          { name = "buffer"; }
          { name = "path"; }
        ];

        mapping = {
          "<C-space>" = "cmp.mapping.complete()";
          "<CR>" = "cmp.mapping.confirm()";
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' })";
          "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' })";
        };

        window = {
          completion.border = "rounded";
          documentation.border = "rounded";
        };
      };
    };
  };
}
