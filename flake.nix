{
  description = "NixOS Configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixos-hardware.url = "github:NixOS/nixos-hardware";

    treefmt-nix = {
      url = "github:numtide/treefmt-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    caelestia-shell = {
      url = "github:caelestia-dots/shell";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    dotfiles.url = "github:EnderNight/dotfiles";
  };

  outputs =
    inputs@{
      self,
      nixpkgs,
      nixos-hardware,
      treefmt-nix,
      home-manager,
      caelestia-shell,
      dotfiles,
      ...
    }:
    {
      formatter."x86_64-linux" =
        (treefmt-nix.lib.evalModule nixpkgs.legacyPackages."x86_64-linux" ./treefmt.nix)
        .config.build.wrapper;

      nixosConfigurations.nixos-framework = nixpkgs.lib.nixosSystem {
        modules = [
          ./configuration.nix

          nixos-hardware.nixosModules.framework-13th-gen-intel

          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              backupFileExtension = "backup";

              extraSpecialArgs.inputs = inputs;

              users.matheo = ./home.nix;
            };
          }
        ];
      };
    };
}
