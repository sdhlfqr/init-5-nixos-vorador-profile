{ inputs, modulesPath, ... }: {
  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")

    inputs.nixos-hardware.nixosModules.common-cpu-intel-cpu-only
    inputs.nixos-hardware.nixosModules.common-gpu-nvidia
    inputs.nixos-hardware.nixosModules.common-pc-laptop-ssd

    ./audio.nix
    ./bluetooth.nix
    ./graphics.nix
    ./network.nix
    ./power.nix
    ./touchpad.nix
  ];
}
