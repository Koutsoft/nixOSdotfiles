{pkgs,inputs, system, ...}:{
  let 
    font = {
      package = pkgs.nerd-fonts.depature-mono;
      name = "Depature Mono Nerd Font";
    };
    colours = builtins.fromToml (builtins.readFile ./colours.toml);
  in {
    programs.ghostty = {
      enable = true;
      font = font;
      colours = colours;
    };
  };

}