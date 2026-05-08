{ pkgs, unstable, ... }: {
  programs.gamemode.enable = true;

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    extraCompatPackages = [ pkgs.proton-ge-bin ];
  };

  environment.systemPackages = let
    wineDeps = with pkgs; [
      libpng
      giflib
      ncurses
      gnutls
      mpg123
      openal
      v4l-utils
      alsa-lib
      libjpeg
      libpulseaudio
      alsa-plugins
      xorg.libXcomposite
      xorg.libXinerama
      libgcrypt
      ocl-icd
      libxslt
      libva
      gtk3
      gst_all_1.gst-plugins-base
      gst_all_1.gstreamer
      gst_all_1.gst-plugins-good
      gst_all_1.gst-plugins-bad
      gst_all_1.gst-plugins-ugly
      cups
      dosbox
      dxvk

      #yu-gi-oh
      edopro
    ];
    emulators = with unstable; [
      (retroarch.withCores (cores: with cores; [ mgba dolphin pcsx2 nestopia ]))
      azahar # 3ds
    ];
    games = with unstable; [ dwarf-fortress prismlauncher edopro ];
    #launchers = with unstable; [ lutris ];
    sysDeps = with pkgs; [ dotnet-sdk wineWowPackages.stagingFull winetricks ];
  in builtins.concatLists [
    emulators
    games
    #launchers
    wineDeps
    sysDeps
  ];
}
