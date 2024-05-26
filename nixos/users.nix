{ pkgs, ... }:

{
  # services.displayManager.autoLogin.enable = true;
  # services.displayManager.autoLogin.user = "talarys";

  users.users.talarys = {
    isNormalUser = true;
    description = "talarys";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
  };
}
