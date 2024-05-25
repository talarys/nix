{ inputs, outputs, lib, config, ... }:

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
    ./stylix.nix
  ];

  nixpkgs = {
    overlays = [ outputs.overlays.unstable-packages ];
    config = { allowUnfree = true; };
  };

  nix =
    let
      flakeInputs = lib.filterAttrs (_: lib.isType "flake") inputs;
    in
    {
      settings = {
        experimental-features = "nix-command flakes";
        flake-registry = "";
        nix-path = config.nix.nixPath;
      };
      channel.enable = false;
      registry = lib.mapAttrs (_: flake: { inherit flake; }) flakeInputs;
      nixPath = lib.mapAttrsToList (n: _: "${n}=flake:${n}") flakeInputs;
    };

  networking.hostName = "nixos";

  services.xserver.enable = true;
  services.gnome.gnome-keyring.enable = true;

  system.stateVersion = "23.11";
}
