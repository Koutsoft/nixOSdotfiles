{
  imports = [ ./firewall.nix ./ssh.nix   ./bluetooth.nix  ];
  networking = {
    hostName = "vih";
    networkmanager.enable = true;
  };
}
