{ inputs, ... }:

{
  imports = [
    inputs.nixvim.homeManagerModules.nixvim

    ./init.nix
  ];
}
