{ ... }: {
  # Enabling BTRFs file system support
  boot.supportedFilesystems = [ "btrfs" ];

  # Enabling Docker on BTRFs
  virtualisation.docker.storageDriver = "btrfs";

  # Loading luks on boot
  boot.initrd.luks.devices.root.device = "/dev/disk/by-partlabel/LUKS";
  boot.initrd.luks.devices.root.preLVM = true;
}
