{ ... }: {
  # Enabling systemd-boot EFI bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Limiting the number of generations on boot
  boot.loader.systemd-boot.configurationLimit = 4;

  # Setting the timeout for the generation selection menu
  boot.loader.timeout = 1;
}
