{ ... }:

{
  imports = [
    ../../modules/system/plasma.nix

    ../../modules/system/ssh.nix

    ../../modules/system/fonts.nix

    ../../modules/system/steam.nix
  ];

  users.users.matheo = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    initialHashedPassword = "matheo";
  };
}
