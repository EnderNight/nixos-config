{ pkgs, ... }:
{
  xdg.configFile."hypr" = {
    source = ../../../dotfiles/hypr;
    recursive = true;
  };

  home.packages = with pkgs; [
    hyprpaper
    hyprpicker
    hyprpolkitagent
    hyprsysteminfo
    wl-clipboard
    cliphist
    inotify-tools
    libnotify
    nerd-fonts.jetbrains-mono
    brightnessctl
    playerctl
    adw-gtk3
    papirus-icon-theme
    kdePackages.qt6ct
    kdePackages.qtsvg
    kdePackages.qtimageformats
    kdePackages.qtmultimedia
    kdePackages.qt5compat
    pavucontrol
    nwg-look
  ];
}
