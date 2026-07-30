{ pkgs, inputs, system, ... }:
{
  environment.systemPackages = with pkgs; [
    deja-dup
  ];
}