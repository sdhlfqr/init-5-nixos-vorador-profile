{ pkgs, ... }: {
  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  services.xserver.displayManager.gdm.wayland = true;

  services.xserver.layout = "us";
  services.xserver.xkbVariant = "dvorak";

  console.useXkbConfig = true;

  services.xserver.displayManager.autoLogin.enable = true;
  services.xserver.displayManager.autoLogin.user = "sdhlfqr";

  # Enabling for gnome dconf management
  programs.dconf.enable = true;

  # Gnome's autologin workaround (nixpkgs/issues/103746#issuecomment-945091229)
  systemd.services."getty@tty1".enable = false;
  systemd.services."autovt@tty1".enable = false;

  # Fixing electron apps not working with Wayland
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  environment.variables.NIXOS_OZONE_WL = "1";
}
