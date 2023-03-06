{ btrfs_options, volume_group_name, ... }: {
  device = "/dev/${volume_group_name}/root";
  fsType = "btrfs";
  options = [ "subvol=@log" ] ++ btrfs_options;
  neededForBoot = true;
}
