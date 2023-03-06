{ ... }: {
  networking.hostName = "vorador";

  networking.interfaces.wlp0s20f3.useDHCP = true;
  networking.interfaces.enp7s0.useDHCP = true;
}
