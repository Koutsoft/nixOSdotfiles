{ inputs, stable, unstable, home-manager, nix-index-database, ... }:

import ./nixos/default.nix {
  inherit inputs stable unstable home-manager nix-index-database;
}