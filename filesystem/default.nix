{ ... }:
let
  volume_group_name = "vorador";

  btrfs_options = [
    "noatime"
    "nodiratime"
    "compress-force=zstd"
    "autodefrag"
    "space_cache=v2"
    "ssd"
    "commit=120"
    "discard=async"
  ];
in
{
  fileSystems."/" = import ./root.nix { inherit btrfs_options volume_group_name; };
  fileSystems."/home" = import ./home.nix { inherit btrfs_options volume_group_name; };
  fileSystems."/nix" = import ./nix.nix { inherit btrfs_options volume_group_name; };
  fileSystems."/persist" = import ./persist.nix { inherit btrfs_options volume_group_name; };
  fileSystems."/var/log" = import ./log.nix { inherit btrfs_options volume_group_name; };

  fileSystems."/boot" = import ./boot.nix;

  imports = [ ./swap.nix ];
}
