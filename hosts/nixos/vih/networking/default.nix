{
  imports = [ ./firewall.nix ./ssh.nix  ./dns ./bluetooth.nix ];
  networking = {
    hostName = "shizuku";
    networkmanager.enable = true;
  };
}
