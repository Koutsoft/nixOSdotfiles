{
  description = "My NixOS config (advanced multi-host)";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-index-database = {
      url = "github:nix-community/nix-index-database";
      inputs.nixpkgs.follows = "nixpkgs-unstable";
    };
  };

  outputs = inputs@{
    self,
    nixpkgs,
    nixpkgs-unstable,
    home-manager,
    nix-index-database,
    ...
  }:
  {
    homeManagerModules = import ./common/homeManagerModules;
    nixosConfigurations = import ./hosts {
      inherit inputs;

      # nomes semânticos
      stable = nixpkgs;
      unstable = nixpkgs-unstable;

      inherit home-manager nix-index-database;
    };
  };
}