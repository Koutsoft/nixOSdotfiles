{
  networking.nftables.enable = true;
  networking.firewall = let ports = { warframe = [ 4950 4955 ]; };
  in {
    allowedTCPPortRanges = [{
      from = 3000;
      to = 3010;
    }];
    allowedUDPPorts = ports.warframe;
  };
}
