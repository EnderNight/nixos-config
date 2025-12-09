{ pkgs, ... }:
{
  programs.firefox.enable = true;

  xdg.mimeApps.defaultApplicationPackages = with pkgs; [
    firefox
  ];
}
