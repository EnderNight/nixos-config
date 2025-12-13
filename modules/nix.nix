{ ... }:
{
  nix = {
    settings.experimental-features = [
      "nix-command"
      "flakes"
    ];
    gc = {
      automatic = true;
      dates = "23:00";
    };
  };

  nixpkgs.config.allowUnfree = true;
}
