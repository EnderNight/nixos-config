{ inputs, pkgs, ... }:
{
  imports = [
    inputs.nixos-hardware.nixosModules.framework-13th-gen-intel

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
    ../../modules/services/power-profiles-daemon.nix
    ../../modules/services/thermald.nix

    ../../modules/hyprland.nix

    ../../users/matheo/hosts/framework
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
