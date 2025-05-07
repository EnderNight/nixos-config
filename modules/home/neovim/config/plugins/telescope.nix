{ ... }:

{
  programs.nixvim.plugins.telescope = {
    enable = true;

    keymaps = {
      "<leader>ff" = {
        action = "find_files";
        options = {
          desc = "Telescope find files";
          noremap = true;
          silent = true;
        };
      };

      "<leader>fg" = {
        action = "live_grep";
        options = {
          desc = "Telescope live grep";
          noremap = true;
          silent = true;
        };
      };
    };
  };
}
