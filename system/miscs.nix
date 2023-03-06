{ ... }: {
  networking.networkmanager.enable = true;

  time.timeZone = "Africa/Cairo";

  # Disabling coredump for security and performance
  systemd.coredump.enable = false;

  # Switching to doas
  security.sudo.enable = false;
  security.doas.enable = true;
  security.doas.extraRules = [{
    users = [ "sdhlfqr" ];
    keepEnv = true;
    persist = true;
  }];
}