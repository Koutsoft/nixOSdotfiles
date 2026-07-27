{ pkgs, inputs, system, ... }:
{
  environment.systemPackages = with pkgs; [
    hashcat
  ];
}