{ pkgs, inputs, system, ... }:

{
  services.gvfs.enable = true;

  environment.systemPackages = with pkgs; [
    deja-dup
  ];
}