{ config, pkgs, ... }:

{
  imports = [
    ../../configuration.nix
    ./packages/default.nix
  ];
}