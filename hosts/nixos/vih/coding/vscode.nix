 { config, pkgs, unstable, ... }: {
   programs.vscode = {
     enable = true;
     package = unstable.vscode;
     
     profiles.default = {
       # Extensões do VSCode
       extensions = with pkgs.vscode-extensions; [
         # Linguagens
         ms-python.python
         rust-lang.rust-analyzer
         # Temas e UI
         catppuccin.catppuccin-vsc
         # Utilitários
         eamodio.gitlens
       ];
 
       # Configurações do VSCode
       userSettings = {
         "editor.formatOnSave" = true;
         "editor.defaultFormatter" = "esbenp.prettier-vscode";
          "[nix]" = {
           "editor.defaultFormatter" = "kamadorueda.alejandra";
         };
          "workbench.colorTheme" = "Catppuccin Mocha";
        };
      };
    };
  }

