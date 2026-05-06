{ inputs, stable, unstable, home-manager, nix-index-database, ... }:

let
  homeModulesWith = specialArgs: {
    imports = [ home-manager.nixosModules.home-manager ];
    home-manager = {
      useGlobalPkgs = true;
      useUserPackages = true;
      extraSpecialArgs = specialArgs;
    };
  };

  mkGenericSystem = system: modules:
    let
      pkgs = import stable {
        inherit system;
        config.allowUnfree = true;
      };

      unstablePkgs = import unstable {
        inherit system;
        config.allowUnfree = true;
      };

      specialArgs = {
        inherit inputs system;
        unstable = unstablePkgs;
      };
    in
    stable.lib.nixosSystem {
      inherit system specialArgs;

      modules = modules ++ [
        nix-index-database.nixosModules.nix-index
        (homeModulesWith specialArgs)
      ];
    };

in {
  vih = mkGenericSystem "x86_64-linux" [ ./vih ];
}