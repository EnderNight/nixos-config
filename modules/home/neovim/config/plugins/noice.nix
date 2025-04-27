{ ... }:

{
  programs.nixvim.plugins = {
    noice = {
      enable = true;
    };

    nui.enable = true;
    notify.enable = true;
  };
}
