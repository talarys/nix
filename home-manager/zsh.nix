{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;

    shellAliases =
      {
        ll = "ls -lah";
        rebuild = "sudo nixos-rebuild switch --flake ~/nix";
        cd = "z";
      };

    zplug = {
      enable = true;
      plugins = [
        { name = "zsh-users/zsh-autosuggestions"; }
      ];
    };
  };
}
