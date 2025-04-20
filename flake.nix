{
  description = "NixOS Configuration";

  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/nixos-24.11;
    home-manager = {
      url = github:nix-community/home-manager/release-24.11;
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }: {
    nixosConfigurations.Nix-Framework = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./nixos/configuration.nix

	home-manager.nixosModules.home-manager {
	  home-manager = {
	    useGlobalPkgs = true;
	    useUserPackages = true;

	    backupFileExtension = "backup";

	    users.matheo = import ./home-manager/home.nix;
	  };
	}
      ];
    };
  };
}
