{ ... }:
{
  users.users.matheo = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "docker"
      "kvm"
      "adbusers"
      "libvirtd"
    ];
  };

  home-manager.users.matheo = ./home.nix;
}
