{ ... }:

{
  imports = [
    ../../modules/system/plasma.nix

    ../../modules/system/fonts.nix
  ];

  users.users.matheo = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };
}
