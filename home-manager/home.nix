# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{ outputs, pkgs, ... }:

{
  imports = [
    ./zsh.nix
    ./starship.nix
  ];

  nixpkgs = {
    overlays = [ outputs.overlays.unstable-packages ];
    config = { allowUnfree = true; };
  };

  home = {
    username = "talarys";
    homeDirectory = "/home/talarys";
    stateVersion = "23.11";
    packages = with pkgs;[
      neofetch
      nnn
      zip
      zoxide
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
    ];
    sessionVariables = {
      EDITOR = "lvim";
    };
  };

  programs.git =
    {
      enable = true;
      userName = "talarys";
      userEmail = "d.simon.ssx0@gmail.com";
    };

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.kitty = {
    enable = true;
    shellIntegration.enableZshIntegration = true;
    settings = {
      font_family = "FiraCode Nerd Font Mono";
      font_size = 12;
      window_padding_width = 5;
      background_opacity = "0.8";
      confirm_os_window_close = 0;
    };
    # kovidgoyal/kitty-themes
    theme = "Catppuccin-Mocha";
  };


  programs.home-manager.enable = true;
  systemd.user.startServices = "sd-switch";
}
