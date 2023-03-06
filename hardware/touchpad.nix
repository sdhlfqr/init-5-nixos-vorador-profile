{ ... }: {
  services.xserver.libinput.enable = true;

  services.xserver.libinput.touchpad.tapping = true;
  services.xserver.libinput.touchpad.naturalScrolling = true;

  services.xserver.libinput.touchpad.tappingDragLock = false;
  services.xserver.libinput.touchpad.middleEmulation = false;

  services.xserver.libinput.touchpad.accelSpeed = "0.6";
}
