{ ... }:
{
  programs.hyprland.enable = true;
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  services.displayManager.ly.enable = true;
}
