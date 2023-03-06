{ ... }: {
  hardware.opengl.enable = true;

  # Drivers
  services.xserver.videoDrivers = [ "nvidia" ];

  # Fixing the graphical corruption after suspend/resume
  hardware.nvidia.powerManagement.enable = true;

  # Disabling NVIDIA PRIME
  hardware.nvidia.prime.offload.enable = false;
}
