{ pkgs, ... }:

{
  programs.zsh.enable = true;
  programs.git.enable = true;

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    wget
    curl
    neovim
    firefox
    lunarvim
    kitty
    dolphin
    zip
    firefox
    nixpkgs-fmt
    wofi
    vscode
  ];
}
