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
    settings = {
      mgr = {
        ratio = [
        1
        4
        3
        ];
        show_hidden = true;
        sort_dir_first = true;
      };

    };
  
  };
}
