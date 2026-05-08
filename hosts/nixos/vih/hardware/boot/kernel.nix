  { pkgs, ... }: {
  
  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;
  # increase total user watches so rust-analyzer don't gobble 'em up.
  boot.kernel.sysctl."fs.inotify.max_user_watches" = 1048576;
  boot.kernel.sysctl."kernel.sysrq" = 1;
  }