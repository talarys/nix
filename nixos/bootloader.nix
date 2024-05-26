{ pkgs, ... }:

{
  boot.loader = {
    efi.canTouchEfiVariables = true;
    grub = {
      enable = true;
      device = "nodev";
      useOSProber = true;
      efiSupport = true;
      # theme = pkgs.stdenv.mkDerivation {
      #   pname = "HyperFluent-GRUB-Theme";
      #   version = "";
      #   src = pkgs.fetchFromGitHub {
      #     owner = "Coopydood";
      #     repo = "HyperFluent-GRUB-Theme";
      #     rev = "869b62584c1a05e711db72cb5a621538424d29f7";
      #     hash = "sha256-LGQahTnS6v23big5KC8LHS709zLXgp3QYcJ1lBTl2SM=";
      #   };
      # installPhase = "cp -r nixos $out";
      # };
    };
  };
}
