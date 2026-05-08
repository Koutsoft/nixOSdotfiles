# hosts/nixos/vih/hardware/default.nix
{ ... }: {
  imports = [
    ./keyboard.nix
    ./boot 
    ./hardware-configuration.nix
  ];
}
