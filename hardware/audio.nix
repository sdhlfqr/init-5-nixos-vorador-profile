{ ... }: {
  # Enabling Keyboard Media Keys
  sound.mediaKeys.enable = true;

  # Enabling Pipewire for better audio
  services.pipewire.enable = true;

  services.pipewire.alsa.enable = true;
  services.pipewire.alsa.support32Bit = true;
  services.pipewire.pulse.enable = true;

  # Enabling for PipeWire
  security.rtkit.enable = true;

  # Disabling for PipeWire conflict
  sound.enable = false;
  hardware.pulseaudio.enable = false;
}
