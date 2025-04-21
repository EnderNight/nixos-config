{ pkgs, ... }:

{
# TODO: Split config into system, etc...

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Paris";

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
