{
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
}
