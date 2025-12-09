{ pkgs, ... }:
{
  programs.yazi.enable = true;

  home.packages = with pkgs; [
    trash-cli
  ];
}
