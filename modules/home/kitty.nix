{ pkgs, ... }:

{
  programs.kitty = {
    enable = true;
    themeFile = "OneDark-Pro";
    font = {
      name = "FiraCode Nerd Font";
      package = (
        pkgs.nerdfonts.override {
          fonts = [
            "FiraCode"
          ];
        }
      );
    };
  };
}
