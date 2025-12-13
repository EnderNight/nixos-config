{ inputs, pkgs, ... }:
{
  imports = [
    inputs.nixos-hardware.nixosModules.common-cpu-amd
    inputs.nixos-hardware.nixosModules.common-cpu-amd-zenpower
    inputs.nixos-hardware.nixosModules.common-gpu-amd
    inputs.nixos-hardware.nixosModules.common-pc
    inputs.nixos-hardware.nixosModules.common-pc-ssd

    ./hardware-configuration.nix

    ../../modules/base.nix
    ../../modules/home-manager.nix
    ../../modules/region.nix
    ../../modules/nix.nix

    ../../modules/bluetooth.nix

    ../../modules/networkmanager.nix
    ../../modules/docker.nix
    ../../modules/ssh.nix
    ../../modules/steam.nix
    ../../modules/adb.nix

    ../../modules/services/pipewire.nix
    ../../modules/services/udisks2.nix
    ../../modules/services/gvfs.nix

    ../../modules/hyprland.nix

    ../../users/matheo/hosts/msi
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
