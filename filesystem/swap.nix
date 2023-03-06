{ volume_group_name, ... }: {
  swapDevices = [{ device = "/dev/${volume_group_name}/swap"; }];
}
