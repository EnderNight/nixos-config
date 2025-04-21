{ ... }:

{
  imports = [
    ../../modules/nixos/wm/hyprland.nix
  ];

  users.users.matheo = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };
}
