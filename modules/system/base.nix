{ pkgs, ... }:

{
  imports = [
    ./systemd-boot.nix

    ./network-manager.nix

    ./region.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  environment.systemPackages = with pkgs; [
    neovim
    git
    tree
    fastfetch
  ];

  # Do not change or delete this line
  system.stateVersion = "24.11";
}
