{ pkgs, inputs, system, ... }:
let
  font = {
    package = pkgs.nerd-fonts.departure-mono;
    name = "DepartureMono Nerd Font";
    size = 24;
  };
  colours = builtins.fromTOML (builtins.readFile ./colours.toml);
in {
  home.packages = [ font.package ];
  programs.alacritty = {
    enable = true;
    settings = {
      window.opacity = 0.98;
      font = with font; {
        inherit size;
        normal.family = name;
        bold.family = name;
        italic.family = name;
        bold_italic.family = name;
        offset.y = -1;
      };
    } // colours;
  };
}
