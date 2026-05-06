{ pkgs, ... }: {
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    wireplumber.enable = true;
    pulse.enable = true;
    # jack.enable = true;
    alsa = {
      enable = true;
      support32Bit = true;
    };

    extraConfig = {
      pipewire."92-low-latency" = {
        "context.properties" = {
          "default.clock.rate" = 48000;
          "default.clock.quantum" = 800;
          "default.clock.min-quantum" = 512;
          "default.clock.max-quantum" = 1024;
        };
      };
      pipewire-pulse."92-low-latency" = {
        "context.properties" = [{
          name = "libpipewire-module-protocol-pulse";
          args = { };
        }];
        "pulse.properties" = {
          "pulse.min.req" = "512/48000";
          "pulse.default.req" = "512/48000";
          "pulse.max.req" = "512/48000";
          "pulse.min.quantum" = "512/48000";
          "pulse.max.quantum" = "1024/48000";
        };
        "stream.properties" = {
          "node.latency" = "32/48000";
          "resample.quality" = 1;
        };
      };
    };
  };

  environment.systemPackages = with pkgs; [
    qpwgraph
    easyeffects
    kdePackages.plasma-pa
  ];
}
