# hosts/nixos/vih/hardware/default.nix
{ ... }: {
  imports = [
    ./keyboard.nix
    ./hardware-configuration.nix
  ];
}
