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
      editor.soft-wrap = {
        enable = true;         # 开启软换行
        wrap-at-text-width = true;  # 将软换行点设置在文本宽度（text-width）处
        #text-width = 100;  # 设置文本宽度阈值
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
