{ pkgs, ... }: {
  imports = [
  
    ./configuration.nix
    ./packages
    ./networking
    ./packages
 ./localization 
  ./apple
  ./chat
  ./programing
  ./notes
  ./hacking
  ./hardware 
  ./backup
  ./virtualization
  ];}