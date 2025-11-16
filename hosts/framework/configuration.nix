{ pkgs, ... }:

{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_zen;

  networking.hostName = "nixos-framework";
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Paris";

  i18n.defaultLocale = "en_US.UTF-8";
  console.keyMap = "us";

  nix = {
    settings = {
      experimental-features = [
        "nix-command"
        "flakes"
      ];
      trusted-users = [
        "root"
        "matheo"
      ];
    };
    gc = {
      automatic = true;
      dates = "23:00";
    };
  };
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    mesa-demos

    htop
  ];

  virtualisation = {
    docker = {
      enable = true;
      enableOnBoot = false;
    };
    libvirtd.enable = true;
    spiceUSBRedirection.enable = true;
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

  services.power-profiles-daemon.enable = true;

  services.thermald.enable = true;

  programs.ssh.startAgent = true;

  programs.steam.enable = true;

  programs.virt-manager.enable = true;

  users.groups.libvirtd.members = [ "matheo" ];

  programs.adb.enable = true;

  hardware = {
    graphics.enable = true;
    intel-gpu-tools.enable = true;
    bluetooth = {
      enable = true;
      settings = {
        General = {
          Expermental = true;
        };
      };
    };
  };

  documentation = {
    man.generateCaches = false;
  };

  # Do not delete or change this line
  system.stateVersion = "25.05";
}
