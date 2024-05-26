{ config, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./locale.nix
    ./bootloader.nix
    ./nvidia.nix
    ./hyprland.nix
    ./garbageCollection.nix
    ./sound.nix
    ./packages.nix
    ./users.nix
    ./display-manager.nix
    ./env.nix
    ./stylix.nix
  ];

  nixpkgs.config.allowUnfree = true;

  nix = {
    settings = {
      experimental-features = "nix-command flakes";
      nix-path = config.nix.nixPath;
    };
  };

  networking.hostName = "nixos";

  services.xserver.enable = true;
  services.gnome.gnome-keyring.enable = true;

  system.stateVersion = "23.11";
}
