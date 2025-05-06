{ pkgs, inputs, ... }:

{
  imports = [
    inputs.nixvim.homeManagerModules.nixvim

    ./config/init.nix
  ];

  home.sessionVariables.EDITOR = "nvim";

  programs.nixvim = {
    enable = true;

    extraPackages = with pkgs; [
      ripgrep
      wl-clipboard
    ];
  };
}
