{ ... }:

{
  programs.nixvim = {
    plugins = {
      web-devicons.enable = true;

      barbar.enable = true;
    };

    keymaps =
      ## Goto buffer in position...
      builtins.genList (
        idx:
        let
          i = idx + 1;
        in
        {
          mode = "n";
          key = "<A-${toString i}>";
          action = "<Cmd>BufferGoto ${toString i}<CR>";
        }
      ) 9
      ++ [
        {
          mode = "n";
          key = "<A-0>";
          action = "<Cmd>BufferLast<CR>";
        }

        ## Move to previous/next
        {
          mode = "n";
          key = "<A-,>";
          action = "<Cmd>BufferPrevious<CR>";
        }
        {
          mode = "n";
          key = "<A-.>";
          action = "<Cmd>BufferNext<CR>";
        }

        ## Close buffer
        {
          mode = "n";
          key = "<A-c>";
          action = "<Cmd>BufferClose<CR>";
        }

        ## Magic buffer-picking mode
        {
          mode = "n";
          key = "<C-p>";
          action = "<Cmd>BufferPick<CR>";
        }
        {
          mode = "n";
          key = "<C-s-p>";
          action = "<Cmd>BufferPickDelete<CR>";
        }
      ];
  };
}
