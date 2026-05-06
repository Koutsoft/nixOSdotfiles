{ config, pkgs, ... }:
{
    imports = [
     ./shells/zsh.nix
     ./coding/vscode.nix
     ./ssh.nix
      ../../configuration.nix
     ];

  home.username = "vih";
  home.homeDirectory = "/home/vih";
  home.stateVersion = "25.11";

  home.packages = with pkgs; [
    
    git

    #Video
    mpv
    ffmpeg-full
    
    #Chat
    discord

    #Games
    steam


      home.sessionVariables = {
    # EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  nixpkgs = {
  config.allowUnfree = true;
};

  ];
}