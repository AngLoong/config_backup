{ config, pkgs, ... }:
{
  # terminal file manager
  programs.yazi = {
    enable = true;
    # package = pkgs.yazi;
    # Changing working directory when exiting Yazi
    enableBashIntegration = true;
    enableFishIntegration = true;
    #enableNushellIntegration = true;
    plugins = {
      bookmarks = pkgs.yaziPlugins.bookmarks;
    };
#    settings = {
#      mgr = {
#        ratio = [
#        1
#        4
#        3
#        ];
#        show_hidden = true;
#        sort_dir_first = true;
#      };
#
#    };
   
  };

  home.file = {
    # fish y.fish quitoncd
    ".config/fish/functions/y.fish".source = ../../dotfiles/yazi/y.fish;
    ".config/yazi/yazi.toml".source = ../../dotfiles/yazi/yazi.toml;
    ".config/yazi/keymap.toml".source = ../../dotfiles/yazi/keymap.toml;
  };
  
}
