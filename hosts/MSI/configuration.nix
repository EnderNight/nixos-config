{ pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix

    ../../modules/system/base.nix

    ../../users/matheo/system.nix
  ];

  networking.hostName = "MSI";

  boot.kernelPackages = pkgs.linuxPackages_zen;

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
}
