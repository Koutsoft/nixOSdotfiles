{ pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
    ./configuration.nix
    ./packages
    ./networking
    ./packages
  #./utils.nix
  ./apple
  ./chat
  #./shells
  ./hardware
  ];
}
