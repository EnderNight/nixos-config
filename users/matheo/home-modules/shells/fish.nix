{ pkgs, ... }:
{
  programs.fish = {
    enable = true;
    generateCompletions = false;
    interactiveShellInit = ''
      set fish_greeting
    '';
  };
  programs.bash = {
    enable = true;
    sessionVariables = {
      CHROME_EXECUTABLE = "${pkgs.google-chrome}/bin/google-chrome-stable";
    };
    initExtra = ''
      if [[ $(${pkgs.procps}/bin/ps --no-header --pid=$PPID --format=comm) != "fish" && -z ''${BASH_EXECUTION_STRING} ]]
      then
        shopt -q login_shell && LOGIN_OPTION='--login' || LOGIN_OPTION=""
        exec ${pkgs.fish}/bin/fish $LOGIN_OPTION
      fi
    '';
  };

  xdg.configFile = {
    "fish/conf.d" = {
      source = ../../dotfiles/fish/conf.d;
      recursive = true;
    };
    "fish/functions" = {
      source = ../../dotfiles/fish/functions;
      recursive = true;
    };
  };
}
