{ pkgs, ... }:

{
  home.packages = with pkgs; [
    stacer
  ];
}
