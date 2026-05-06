{ pkgs, inputs, system, unstable, ... }: 
let 
  inherit (pkgs) lib;
in
{
  programs.fish.enable = true;
  programs.zsh.enable = true;
  programs.dconf.enable = true;
  programs.gnupg.agent.enable = true;
  services.gnome.gnome-keyring.enable = true;
  environment.systemPackages = let 
    osx-kvm = with pkgs; [ dmg2img libguestfs p7zip ];
  in with pkgs;
    let 
    nix-alien = inputs.nix-alien.packages.${system}.nix-alien;
    tundra = inputs.tundra.packages.${system};
    in [
      swww
      wl-clipboard
      xdg-utils
      glib
      grim
      slurp
      libnotify
      imagemagick
      num-utils
      luajit
      xorg.xhost
      inetutils
      nmap
      ripgrep
      jq
      fzf
      fd
      gnupg
      pinentry-curses
      pulsemixer
      eza
      httpie
      wget
      htop
      btop
      dig
      dust
      bat
      transmission_4
      transmission_4-gtk
      piper
      pulseaudio
      pavucontrol
      toybox
      keepassxc
      bitwarden-cli
      yazi
      mlt
      unstable.xwayland-satellite
      parted
      nix-alien
      vulkan-tools
      yt-dlp

      exiftool
      steghide
      stegseek

      zip
      unzip
      unrar
      git
      imv
      mpv
      cachix
      wmctrl
      p7zip
      nix-tree
      ffmpeg
      (unstable.wrapOBS { plugins = with unstable.obs-studio-plugins; [ wlrobs obs-pipewire-audio-capture obs-vaapi obs-vkcapture ]; })
      xorg.xinit
      charm-freeze
      # override `coreutils`'s binaries.
      (lib.hiPrio uutils-coreutils-noprefix)
      tundra.textract-bin
      hexyl
      qrrs
      lm_sensors

      nodejs_22
      cargo
      cargo-info
    ] ++ osx-kvm;
}
