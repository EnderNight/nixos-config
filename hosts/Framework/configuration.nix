{ pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix

    ../../modules/system/base.nix
    ../../modules/system/services/fprintd.nix

    ../../users/matheo/system.nix
  ];

  networking.hostName = "Framework";
}
