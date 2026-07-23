{ pkgs, inputs, system, ... }:
{
  environment.systemPackages = with pkgs; [
    nodejs_24
  ];
}