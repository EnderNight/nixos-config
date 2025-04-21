{ ... }:

{
  imports = [
    ../../modules/system/plasma.nix
  ];

  users.users.matheo = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };
}
