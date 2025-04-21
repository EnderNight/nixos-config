{ ... }:

{
  users.users.matheo = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };
}
