{
  services.hyprpaper = {
    enable = true;
    settings = {
      ipc = "on";
      splash = false;
      preload =
        [
          "~/nix/wallpapers/misty_forest.jpg"
        ];

      wallpaper = [
        "DP-2, ~/nix/wallpapers/misty_forest.jpg"
        "HDMI-A-2, ~/nix/wallpapers/misty_forest.jpg"
      ];
    };
  };
}
