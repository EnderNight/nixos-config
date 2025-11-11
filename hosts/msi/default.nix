{ inputs, ... }:
{
  imports = [
    ./configuration.nix
    ./hardware-configuration.nix
  ]
  ++ (with inputs; [
    home-manager.nixosModules.home-manager
  ])
  ++ (with inputs.nixos-hardware.nixosModules; [
    common-cpu-amd
    common-cpu-amd-zenpower
    common-gpu-amd
    common-pc
    common-pc-ssd
  ]);

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
