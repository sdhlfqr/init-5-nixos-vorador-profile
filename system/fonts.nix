{ pkgs, ... }: {
  console.font = "Lat2-Terminus16";

  setFonts.enable = true;

  setFonts.ui.title = "Ubuntu";
  setFonts.ui.package = pkgs.ubuntu_font_family;

  setFonts.code.title = "FiraCode Nerd Font Mono";
  setFonts.code.package = pkgs.nerdfonts.override { fonts = [ "FiraCode" ]; };
}
