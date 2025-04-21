{ ... }:

{
  imports = [
    ../services/sddm.nix
    ../services/pipewire.nix
  ];

  programs.hyprland = {
    enable = true;
    withUWSM = true;
  };
}
