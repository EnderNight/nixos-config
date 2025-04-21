{ ... }:

{
  imports = [
    ../../modules/nixos/de/kde.nix
  ];

  users.users.matheo = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };
}
