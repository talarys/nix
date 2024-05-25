{ pkgs, ... }:

{
  services.xserver.displayManager.autoLogin.enable = true;
  services.xserver.displayManager.autoLogin.user = "talarys";

  users.users.talarys = {
    isNormalUser = true;
    description = "talarys";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
  };
}
