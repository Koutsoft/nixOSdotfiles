{ pkgs, inputs, system, ... }:

{environment.systemPackages = [
  iperf3
];
}