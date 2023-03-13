{ ... }: {
  networking.networkmanager.enable = true;

  time.timeZone = "Africa/Cairo";

  setI18n.global.enable = true;
  setI18n.global.title = "en_GB.UTF-8";

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
