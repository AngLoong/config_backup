{ config, pkgs, ... }:  # 这些参数由构建系统自动输入，你先别管

{
    
  home.file = {
  
    ## <!--git-->
    #".gitconfig".source = git/gitconfig;
    
    ## <!--ssh-->
    #".ssh/config".source = ssh/config;

    ##<!--kitty-->##  
	  #".config/kitty/kitty.conf".source = kitty/kitty.conf;	

	  ## <!--ALy-->
	  # aliases
	  ".config/fish/conf.d/aliases.fish".source = ALy/ALy.fish;
	
    ## <!--alacritty-->
	  #".config/alacritty/alacritty.toml".source = alacritty/alacritty.toml;
	  # theme
	  #".config/alacritty/themes/tokyo-night-storm.toml".source = alacritty/themes/tokyo-night-storm.toml;

  	## <!--hyprland-->
    #".config/hypr".source = hyprland/hypr;
    ".config/mako".source = hyprland/mako;
  	".config/waybar".source = hyprland/waybar;
  	".config/wofi".source = hyprland/wofi;

    ## <!--ghostty-->
    ".config/ghostty".source = ./ghostty;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };
}

