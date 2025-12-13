{ ... }:
{
  programs.fish = {
    enable = true;
    generateCompletions = false;
    interactiveShellInit = ''
      set fish_greeting
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
