{ ... }: {
  nixpkgs.config.allowUnfree = true;

  nix.settings.max-jobs = 8;

  nix.gc.automatic = true;
  nix.gc.dates = "weekly";
  nix.gc.options = "--delete-older-than 7d";
}