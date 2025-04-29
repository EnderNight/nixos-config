{ ... }:

{
  imports = [
    ../../modules/system/plasma.nix

    ../../modules/system/ssh.nix

    ../../modules/system/fonts.nix

    ../../modules/system/services/distrobox.nix
  ];

  users.users.matheo = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    initialHashedPassword = "matheo";
  };
}
