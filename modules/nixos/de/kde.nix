{ ... }:

{
  imports = [
    ../services/sddm.nix
  ];

  services.desktopManager.plasma6.enable = true;
}
