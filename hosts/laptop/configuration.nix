{ pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix

      ../../modules/common.nix

      ../../users/matheo/default.nix
    ];

  networking.hostName = "laptop";
}

