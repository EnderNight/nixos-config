{
  description = "NixOS Configuration";

  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/nixos-24.11;
    home-manager = {
      url = github:nix-community/home-manager/release-24.11;
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }:
    let homeConfig = [
      home-manager.nixosModules.home-manager
      {
        home-manager = {
          useGlobalPkgs = true;
          useUserPackages = true;

          backupFileExtension = "backup";

          users.matheo = import ./users/matheo/home.nix;
        };
      }
      ];
    in
    {
      nixosConfigurations = {
        Framework = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = homeConfig ++ [
            ./hosts/Framework/configuration.nix
          ];
        };
      };
    };
}
