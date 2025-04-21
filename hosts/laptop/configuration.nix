{ pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix

      ../../modules/nixos

      ../../users/matheo
    ];

  networking.hostName = "laptop";
}

