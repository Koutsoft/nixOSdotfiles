{ pkgs, ... }: {
  imports = [
  
    ./configuration.nix
    ./packages
    ./networking
    ./packages
 ./localization 
  ./apple
  ./chat
  ./notes
 
  ./hardware 
  ];
}
