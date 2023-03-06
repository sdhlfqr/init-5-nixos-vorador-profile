{ ... }: {
  imports = [
    ./devices.nix
    ./kernel.nix
    ./loader.nix
    ./plymouth.nix
  ];
}
