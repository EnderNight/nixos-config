{ pkgs, ... }:

{
  imports = [
    ./services/sddm.nix
    ./services/pipewire.nix
  ];

  services.desktopManager.plasma6.enable = true;
}
