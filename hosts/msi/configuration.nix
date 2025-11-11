{ pkgs, ... }:

{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_zen;

  networking.hostName = "nixos-msi";
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Paris";

  i18n.defaultLocale = "en_US.UTF-8";
  console.keyMap = "us";

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
  nix.gc = {
    automatic = true;
    dates = "23:00";
  };
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    htop
  ];

  virtualisation.docker = {
    enable = true;
    enableOnBoot = false;
  };

  programs.hyprland.enable = true;
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  services.displayManager.ly.enable = true;

  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  services.udisks2.enable = true;
  services.gvfs.enable = true;

  programs.ssh.startAgent = true;

  # Do not delete or change this line
  system.stateVersion = "25.05";
}
