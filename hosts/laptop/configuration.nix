{ pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix

      ../../modules/system/base.nix

      ../../users/matheo/system.nix
    ];

  networking.hostName = "laptop";
}

