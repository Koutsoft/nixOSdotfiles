{ pkgs, inputs, system, ... }:
{
  environment.systemPackages = [
    pkgs.libimobiledevice
    pkgs.ifuse
    pkgs.gvfs
    pkgs.hfsprogs
    pkgs.pciutils
    pkgs.libgpod
  ];
}
