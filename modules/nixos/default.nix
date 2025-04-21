{ pkgs, ... }:

{
  imports = [
    ./boot/systemd-boot.nix

    ./networking/nm.nix

    ./region/timezone.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  environment.systemPackages = with pkgs; [
    neovim
    git
    tree
  ];

  # Do not change or delete this line
  system.stateVersion = "24.11";
}
