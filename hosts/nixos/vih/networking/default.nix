{
  imports = [ ./firewall.nix ./ssh.nix   ./bluetooth.nix ./iperf3.nix ];
  networking = {
    hostName = "vih";
    networkmanager.enable = true;
  };
}
