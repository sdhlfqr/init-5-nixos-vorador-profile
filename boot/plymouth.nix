{ ... }: {
  # Enabling the splash-screen with plymouth
  boot.plymouth.enable = true;
  boot.plymouth.theme = "bgrt";

  # Enabling luks drive decryption screen
  boot.initrd.systemd.enable = true;

  # Hiding the terminal log on boot
  boot.kernelParams = [ "quiet" ];
  boot.loader.systemd-boot.consoleMode = "max";
}
