{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "Nix-Framework";
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Paris";

  users.users.matheo = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  programs = {
    hyprland = {
      enable = true;
      withUWSM = true;
    };
    firefox.enable = true;
  };

  environment.systemPackages = with pkgs; [
    neovim
    git
  ];

  # Do not change or delete this line
  system.stateVersion = "24.11";
}

