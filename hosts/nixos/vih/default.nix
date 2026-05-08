{ pkgs, ... }: {
  imports = [
  
    ./configuration.nix
    ./packages
    ./networking
    ./packages
 ./localization 
  ./apple
  ./chat
 
  ./hardware 
  ];
}
