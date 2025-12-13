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

  fileSystems."/home/matheo/Storage" = {
    device = "/dev/disk/by-uuid/13ddf8d8-def6-467f-b487-1958633cf951";
    fsType = "ext4";
  };
}
