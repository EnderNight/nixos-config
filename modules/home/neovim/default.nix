{ pkgs, inputs, ... }:

{
  imports = [
    inputs.nixvim.homeManagerModules.nixvim

    ./config/init.nix
  ];

  programs.nixvim = {
    enable = true;

    extraPackages = with pkgs; [
      ripgrep
      wl-clipboard
    ];
  };
}
