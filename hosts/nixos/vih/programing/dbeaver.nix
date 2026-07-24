


{ pkgs, inputs, system, ... }:
{
  environment.systemPackages = with pkgs; [
    dbeaver-bin
  ];
}