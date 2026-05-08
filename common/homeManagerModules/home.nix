{ config, pkgs, ... }:

{

imports = [
./alacritty
./startship
./coding/vscode/vscode.nix
];

  home.username = "vih";
  home.homeDirectory = "/home/vih";
  home.stateVersion = "25.11";

  programs.bash = {
    enable = true;

    shellAliases = {
      btw = "echo i use nixos btw";
    };
  };
}
