{ config, pkgs, ... }:

{
  programs.helix = {
    enable = true;
    extraPackages = [
      #pkgs.marksman
      #pkgs.nixfmt
    ];

    settings = {
      theme = "catppuccin_latte";
      editor.cursor-shape = {
        normal = "block";
        insert = "bar";
        select = "underline";
      };
    };
#
    languages.language = [
      {
        name = "nix";
        auto-format = true;
        formatter.command = "${pkgs.nixfmt}/bin/nixfmt";
      }
    ];
#
#        themes = {
#      autumn_night_transparent = {
#        "inherits" = "autumn_night";
#        "ui.background" = { };
#      };
#    };

  };

  home.file = {
    #".config/helix/config.toml".source = ../../../dotfiles/helix/config.toml;
    ".config/helix/themes".source = ../../../dotfiles/helix/themes;
  };

}
