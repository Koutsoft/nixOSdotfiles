{ pkgs, ... }:

{
  programs.firefox = {
    enable = true;
    
    # Define as configurações do perfil
    profiles.vih = {
      isDefault = true;
      
      # Força o Firefox a usar o idioma brasileiro na interface
      settings = {
        "intl.locale.requested" = "pt-BR";
        "browser.search.region" = "BR";
        "browser.search.isUS" = false;
        "distribution.searchplugins.defaultLocale" = "pt-BR";
        "general.useragent.locale" = "pt-BR";
        
        # Opcional: Algumas melhorias de privacidade/performance que combinam com seu cleanup
        "browser.topsites.contile.enabled" = false; # Remove lixo da página inicial
        "browser.newtabpage.activity-stream.showSponsoredTopSites" = false; # Remove sites patrocinados
      };
    };
  };

  # Garante que o pacote de dicionário/tradução esteja disponível no sistema
  home.packages = [
    pkgs.hunspellDicts.pt_BR
  ];
}