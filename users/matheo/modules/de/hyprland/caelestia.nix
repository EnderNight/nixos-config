{ inputs, pkgs, ... }:
{
  imports = [
    inputs.caelestia-shell.homeManagerModules.default
  ];

  programs.caelestia = {
    enable = true;
    systemd.enable = false;

    cli.enable = true;
  };

  home.pointerCursor = {
    enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Ice";
    size = 24;

    hyprcursor.enable = true;
  };

  xdg.configFile."caelestia" = {
    source = ../../../dotfiles/caelestia;
    recursive = true;
  };

  home.packages = with pkgs; [
    app2unit
    jq
  ];
}
