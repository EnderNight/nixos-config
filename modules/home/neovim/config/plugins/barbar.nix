{ ... }:

{
  programs.nixvim = {
    plugins = {
      web-devicons.enable = true;

      barbar.enable = true;
    };

    keymaps =
      map
        (
          mapping:
          let
            opts = {
              silent = true;
              noremap = true;
            };
          in
          mapping // { options = mapping.options // opts; }
        )
        (
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
              options.desc = "Go to buffer ${toString i}";
            }
          ) 9
          ++ [
            {
              mode = "n";
              key = "<A-0>";
              action = "<Cmd>BufferLast<CR>";
              options.desc = "Go to last buffer";
            }

            ## Move to previous/next
            {
              mode = "n";
              key = "<A-,>";
              action = "<Cmd>BufferPrevious<CR>";
              options.desc = "Go to previous buffer";
            }
            {
              mode = "n";
              key = "<A-.>";
              action = "<Cmd>BufferNext<CR>";
              options.desc = "Go to next buffer";
            }

            ## Close buffer
            {
              mode = "n";
              key = "<A-c>";
              action = "<Cmd>BufferClose<CR>";
              options.desc = "Close current buffer";
            }

            ## Magic buffer-picking mode
            {
              mode = "n";
              key = "<C-p>";
              action = "<Cmd>BufferPick<CR>";
              options.desc = "Pick a buffer";
            }
            {
              mode = "n";
              key = "<C-s-p>";
              action = "<Cmd>BufferPickDelete<CR>";
              options.desc = "Delete a picked buffer (?)";
            }
          ]
        );
  };
}
