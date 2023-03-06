{ btrfs_options, volume_group_name, ... }: {
  device = "/dev/${volume_group_name}/root";
  fsType = "btrfs";
  options = [ "subvol=@home" ] ++ btrfs_options;
}
