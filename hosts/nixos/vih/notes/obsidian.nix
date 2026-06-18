{ pkgs, inputs, system, ... }:

{
  environment.systemPackages = with pkgs; [
    obsidian
  ];
}