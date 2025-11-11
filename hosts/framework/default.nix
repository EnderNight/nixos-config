{ inputs, ... }:
{
  imports = [
    ./configuration.nix
    ./hardware-configuration.nix

    inputs.nixos-hardware.nixosModules.framework-13th-gen-intel

    inputs.home-manager.nixosModules.home-manager
  ];

  users.users.matheo = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "docker"
    ];
  };

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    backupFileExtension = "backup";

    extraSpecialArgs = { inherit inputs; };

    users.matheo = ../../users/matheo/home.nix;
  };
}
