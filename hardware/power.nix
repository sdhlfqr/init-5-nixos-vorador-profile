{ ... }: {
  services.tlp.enable = true;
  services.thermald.enable = true;

  powerManagement.enable = true;
  powerManagement.powertop.enable = true;
  powerManagement.cpuFreqGovernor = "powersave";

  services.undervolt.enable = true;
  services.undervolt.coreOffset = -50;

  networking.networkmanager.wifi.powersave = true;

  # Disabling Gnome's power daemon, as it conflicts with the above
  services.power-profiles-daemon.enable = false;
}
