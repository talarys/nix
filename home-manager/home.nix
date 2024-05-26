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
    ./hyprland.nix
    ./hypr.nix
  ];

  nixpkgs.config.allowUnfree = true;

  home = {
    username = "talarys";
    homeDirectory = "/home/talarys";
    stateVersion = "23.11";
    packages = with pkgs;[
      zip
      lunarvim
      vivaldi
      vivaldi-ffmpeg-codecs
      kitty
      nerdfonts
      nixpkgs-fmt
      discord
      nodejs
      neofetch
      onefetch
      ipfetch
      cpufetch
      ramfetch
      starfetch
      octofetch
      zfxtop
      kmon
      vdpauinfo
      nvtopPackages.full
    ];
    sessionVariables = {
      EDITOR = "lvim";
    };
  };

  programs.htop.enable = true;
  programs.btop.enable = true;
  programs.bottom.enable = true;
  programs.nnn.enable = true;
  programs.firefox.enable = true;
  programs.wofi.enable = true;
  programs.vscode.enable = true;
  programs.fzf.enable = true;
  programs.imv.enable = true;

  programs.home-manager.enable = true;
  systemd.user.startServices = "sd-switch";
}
