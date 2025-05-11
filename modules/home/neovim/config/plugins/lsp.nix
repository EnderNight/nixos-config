{ ... }:

{
  programs.nixvim.plugins.lsp = {
    enable = true;

    servers = {
      ocamllsp = {
        enable = true;
        package = null;
      };
    };
  };
}
