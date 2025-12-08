{ inputs, pkgs, ... }:
{
  imports = [
    inputs.nixos-hardware.nixosModules.common-cpu-amd
    inputs.nixos-hardware.nixosModules.common-cpu-amd-zenpower
    inputs.nixos-hardware.nixosModules.common-gpu-amd
    inputs.nixos-hardware.nixosModules.common-pc
    inputs.nixos-hardware.nixosModules.common-pc-ssd

    ./hardware-configuration.nix

    ../../modules/system/base.nix
    ../../modules/system/home-manager.nix
    ../../modules/system/region.nix
    ../../modules/system/nix.nix

    ../../modules/system/bluetooth.nix

    ../../modules/system/networkmanager.nix
    ../../modules/system/docker.nix
    ../../modules/system/ssh.nix
    ../../modules/system/steam.nix
    ../../modules/system/adb.nix

    ../../modules/system/services/pipewire.nix
    ../../modules/system/services/udisks2.nix
    ../../modules/system/services/gvfs.nix

    ../../modules/system/hyprland.nix

    ../../users/matheo/system.nix
  ];

  networking.hostName = "msi";

  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };

    kernelPackages = pkgs.linuxPackages_zen;

    tmp.cleanOnBoot = true;
  };

  console.keyMap = "us";

  hardware.graphics.enable = true;

  system.stateVersion = "25.05";
}
