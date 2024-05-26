{ pkgs, ... }:

{
  programs.zsh.enable = true;
  programs.git.enable = true;
  programs.thunar.enable = true;


  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    wget
    curl
    neovim
    firefox
    lunarvim
    kitty
    zip
    nixpkgs-fmt
    wofi
    wl-clipboard
    gnome.gnome-keyring
    util-linux
  ];
}
