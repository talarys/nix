{ pkgs, ... }:

{
  stylix = {
    image = ../wallpapers/misty_forest.jpg;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-medium.yaml";
  };
}
