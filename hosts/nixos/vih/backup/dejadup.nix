{ pkgs, inputs, system, ... }:

{
  services.gvfs.enable = true;

  services.gnome.gnome-keyring.enable = true;

  security.pam.services.sddm.enableGnomeKeyring = true;

  environment.systemPackages = with pkgs; [
    deja-dup
  ];
}