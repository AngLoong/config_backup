##<!--2026-02-03-->

{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "angloong";
  home.homeDirectory = "/home/angloong";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "25.11"; # Please read the comment before changing.

  imports = [
    ./config.nix
  ];

  i18n.inputMethod = {
      type = "fcitx5";
      enable = true;
      fcitx5.waylandFrontend = true;
      fcitx5.addons = with pkgs; [
          fcitx5-gtk             # alternatively, kdePackages.fcitx5-qt
          #fcitx5-chinese-addons  # table input method support
          fcitx5-nord            # a color theme
     	  qt6Packages.fcitx5-configtool 
	  #fcitx5-rime
	  fcitx5-mozc
	  (fcitx5-rime.override {
       	      rimeDataPkgs = [
                  pkgs.rime-ice
              ];
          })
     ];
   };




  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # ##pkgs.hello
	pkgs.vim
	(pkgs.nnn.override { withNerdIcons = true; })
	pkgs.feh
	pkgs.meld
	pkgs.aria2
	#pkgs.lunarvim


    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];


  programs = {
    neovim = {
      enable = true;
	##nvim-tree-lua
			##lualine-nvim
		##	cmp-git
		##	cmp-fish
		##	luasnip
      plugins = [

        pkgs.vimPlugins.lualine-nvim

        # Example Plugin: nvim-tree-lua
        pkgs.vimPlugins.nvim-tree-lua

        # Example Plugin: vim-startify with configuration

  
        # Example Plugin: nvim-colorizer-lua with Lua config
        # Due to how the runtimepath for Lua modules is processed, your configuration may require
        # packadd! plugin-name to require a module. A home-manager example:


        # Example Plugin: nvim-treesitter with Lua config

      ];
      waylandSupport = true; # wayland clipboard support
    };
  };

 

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

	##<!--rime-->##
	".local/share/fcitx5/rime/default.custom.yaml".source = dotfiles/rime/default.custom.yaml;

        ##<!--kitty-->##  
	".config/kitty/kitty.conf".source = dotfiles/kitty/kitty.conf;	

	##<!--nnn-->##
	".config/nnn/plugins/".source = dotfiles/nnn/plugins/.;
	#fish quit on cd
	".config/fish/functions/n.fish".source = dotfiles/nnn/n.fish;

	## <!--ALy-->
	# aliases
	".config/fish/conf.d/aliases.fish".source = dotfiles/ALy/ALy.fish;
	## <!--alacritty-->
	".config/alacritty/alacritty.toml".source = dotfiles/alacritty/alacritty.toml;
	# theme
	".config/alacritty/themes/tokyo-night-storm.toml".source = dotfiles/alacritty/themes/tokyo-night-storm.toml;
	## <!--aria2-->
	".aria2/aria2.conf".source = dotfiles/aria2/aria2.conf;

	## <!--nvchad-->
	".config/nvim".source = dotfiles/nvchad;
	".config/nvim".recursive = true;


    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/angloong/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
    	## <!--fcitx5--> 
	XMODIFIERS = "@im=fcitx";
    	GTK_IM_MODULE = "fcitx5";
    	QT_IM_MODULE = "fcitx5";

	## <!--nnn-->
	# nnn所有的配置都是通过环境变量设置的，
	# 所以只要将该文件source到相关文件即可，
	#比如environment或bashrc或fish
	#
	# 启动选项
	NN_OPTS = "d";  # 显示隐藏文件，详细模式
	# 快捷书签
	NNN_BMS = "h:~/;w:~/Workspaces;n:~/Notes;m:~/.config/home-manager";
	# 加载插件（格式：插件名:快捷键）
	NNN_PLUG = "z:fzcd;o:fzopen;";


  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
