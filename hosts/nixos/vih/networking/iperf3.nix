{ pkgs, inputs, system, ... }:

{
  environment.systemPackages = with pkgs; [
    iperf3
  ];
}