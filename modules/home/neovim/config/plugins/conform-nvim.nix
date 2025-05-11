{ ... }:

{
  programs.nixvim.plugins.conform-nvim = {
    enable = true;

    settings = {
      notify_no_formatters = true;
      formatters_by_fr = {
        lua = [ "stylua" ];
        ocaml = [ "ocamlformat" ];
        "_" = [ "trim_whitespace" ];
      };
      format_on_save = ''
        function(bufnr)
          return {
            timeout_ms = 500,
            lsp_format = 'fallback',
          }
        end
      '';
    };
  };
}
