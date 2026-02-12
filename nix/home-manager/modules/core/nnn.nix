{ config, pkgs, ... }:  # 这些参数由构建系统自动输入，你先别管

{
  home.packages = [
	  (pkgs.nnn.override { withNerdIcons = true; })
  ];

  home.file = {
    ##<!--nnn-->##
	  #".config/nnn/plugins/".source = dotfiles/nnn/plugins/.;
	  #fish quit on cd
	  #".config/fish/functions/n.fish".source = dotfiles/nnn/n.fish;
  };

  home.sessionVariables = {
    ## <!--nnn-->
	  ## nnn所有的配置都是通过环境变量设置的，
	  ##   所以只要将该文件source到相关文件即可，
	  ##   比如environment或bashrc或fish
	  ##-------------------------------------
	  ## 启动选项
	  NN_OPTS = "d";  # 显示隐藏文件，详细模式
	  ##快捷书签
	  NNN_BMS = "h:~/;w:~/Workspaces;n:~/Notes;m:~/.config/home-manager;s:~/Shell/scripts";
	  ## 加载插件（格式：插件名:快捷键）
	  NNN_PLUG = "z:fzcd;o:fzopen;";
  };
}

