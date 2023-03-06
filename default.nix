{ ... }: {
  imports = [
    ../../modules/global

    ../../modules/common/debloat_gnome.nix
    ../../modules/common/exclude_xterm.nix

    ./boot
    ./filesystem
    ./hardware
    ./system
  ];
}
