{
    description = "My first flake!";

    inputs = {
       nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
       nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
       home-manager.url = "github:nix-community/home-manager/release-25.11";
       home-manager.inputs.nixpkgs.follows = "nixpkgs";
    };

    outputs = {self,nixpkgs,nixpkgs-unstable,home-manager, ... }:
    let
        lib =  nixpkgs.lib;  
        system = "x86_64-linux";
        pkgs = import nixpkgs {
          inherit system;
          config = { allowUnfree = true; };
        };
        unstable = import nixpkgs-unstable {
          inherit system;
          config = { allowUnfree = true; };
        };
    in {
        nixosConfigurations = {
            nixos = lib.nixosSystem{
                inherit system pkgs;
                modules = [./configuration.nix];
            };
        };
        homeConfigurations = {
            vih = home-manager.lib.homeManagerConfiguration {
                pkgs = pkgs;
                extraSpecialArgs = { inherit unstable; };
                modules = [./home.nix];
            };
        };
    };
}