{ ... }: {
  boot.kernelPackages = pkgs.linuxPackages_zen;

  boot.initrd.availableKernelModules = [ "xhci_pci" "ahci" "nvme" "usbhid" "usb_storage" "sd_mod" ];
  boot.initrd.kernelModules = [ "dm-snapshot" ];

  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];
}
