{ ... }:

{
  programs.git = {
    enable = true;

    userEmail = "ndxendernight@gmail.com";
    userName = "Ender";

    delta.enable = true;

    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}
