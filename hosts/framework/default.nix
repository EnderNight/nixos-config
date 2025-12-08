{ inputs, pkgs, ... }:
{
  imports = [
    inputs.nixos-hardware.nixosModules.framework-13th-gen-intel

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
    ../../modules/system/services/power-profiles-daemon.nix
    ../../modules/system/services/thermald.nix

    ../../modules/system/hyprland.nix

    ../../users/matheo/system.nix
  ];

  networking.hostName = "framework";

  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };

    kernelPackages = pkgs.linuxPackages_zen;

    tmp.cleanOnBoot = true;
  };

  console.keyMap = "us";

  services.logind.settings.Login = {
    HandlePowerKey = "suspend";
  };

  hardware = {
    graphics.enable = true;
    intel-gpu-tools.enable = true;
  };

  system.stateVersion = "25.05";
}
