{ ... }:
{
  users.users.matheo = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "docker"
    ];
  };

  home-manager.users.matheo = ./home.nix;
}
