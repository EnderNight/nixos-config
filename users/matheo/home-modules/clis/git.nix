{ ... }:
{
  programs.git = {
    enable = true;
    settings = {
      init = {
        defaultBranch = "main";
      };
      user = {
        name = "Ender";
        email = "ndxendernight@gmail.com";
      };
    };
  };
}
