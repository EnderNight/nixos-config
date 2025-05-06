{ pkgs, ... }:

{
  programs = {
    yazi = {
      enable = true;
    };

    jq.enable = true;
    fd.enable = true;
    ripgrep.enable = true;
    fzf.enable = true;
    zoxide.enable = true;
  };

  home.packages = with pkgs; [
    ffmpeg
    p7zip
    poppler
    resvg
    imagemagick
    wl-clipboard
  ];
}
