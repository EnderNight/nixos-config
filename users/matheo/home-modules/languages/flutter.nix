{ pkgs, ... }:
{
  programs.bash = {
    enable = true;
    sessionVariables = {
      CHROME_EXECUTABLE = "${pkgs.google-chrome}/bin/google-chrome-stable";
    };
  };
}
