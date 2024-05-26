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
  ];

  nixpkgs.config.allowUnfree = true;

  nix = {
    settings = {
      experimental-features = "nix-command flakes";
    };
    channel.enable = false;
  };

  networking.hostName = "nixos";

  services.xserver.enable = true;
  services.gnome.gnome-keyring.enable = true;

  system.stateVersion = "23.11";
}
