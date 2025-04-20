{ config, lib, pkgs, ... }:

{
  imports =
    [
      ../../modules/hardware/laptop.nix

      ../../modules/system/common.nix
    ];

  networking.hostName = "laptop";
}

