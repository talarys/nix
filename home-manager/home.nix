# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{ pkgs, ... }:

{
  imports = [
    ./zsh.nix
    ./starship.nix
    ./kitty.nix
    ./zoxide.nix
    ./git.nix
  ];

  nixpkgs.config.allowUnfree = true;

  home = {
    username = "talarys";
    homeDirectory = "/home/talarys";
    stateVersion = "23.11";
    packages = with pkgs;[
      neofetch
      nnn
      zip
      lunarvim
      firefox
      vivaldi
      vivaldi-ffmpeg-codecs
      kitty
      nerdfonts
      nixpkgs-fmt
      discord
      wofi
      nodejs
      vscode
    ];
    sessionVariables = {
      EDITOR = "lvim";
    };
  };

  programs.home-manager.enable = true;
  systemd.user.startServices = "sd-switch";
}
