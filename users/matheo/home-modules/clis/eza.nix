{ ... }:
{
  programs.eza = {
    enable = true;
    colors = "always";
    icons = "always";
    extraOptions = [
      "--hyperlink"
      "--group-directories-first"
      "--smart-group"
      "--header"
    ];
  };
}
