{ pkgs, ... }:

{
  imports =
    [
      ./hardware.nix

      ../../modules/nixos

      ../../users/matheo
    ];

  networking.hostName = "laptop";
}

