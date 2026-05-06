{ inputs, stable, unstable, home-manager, nix-index-database, ... }:
{
  vih = import ./nixos {
    inherit inputs stable unstable home-manager nix-index-database;
  };
}