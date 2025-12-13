{ ... }:
{
  programs.starship = {
    enable = true;
    enableTransience = true;
  };

  xdg.configFile."starship.toml".source = ../../dotfiles/starship.toml;
}
