{ config, pkgs, ... }:

{
  imports = [
    ../../configuration.nix
    ./packages
  ];
}
