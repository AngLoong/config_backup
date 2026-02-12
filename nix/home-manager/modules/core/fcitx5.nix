{ config, pkgs, ... }:  # 这些参数由构建系统自动输入，你先别管

{
  
  i18n.inputMethod = {
    type = "fcitx5";
    enable = true;
    fcitx5.waylandFrontend = true;
^   fcitx5.addons = with pkgs; [
^     fcitx5-gtk             # alternatively, kdePackages.fcitx5-qt
^     #fcitx5-chinese-addons  # table input method support
^     fcitx5-nord            # a color theme
^     qt6Packages.fcitx5-configtool 
^	    #fcitx5-rime
^	    fcitx5-mozc
^	    (fcitx5-rime.override {
^       rimeDataPkgs = [
^         pkgs.rime-ice
^       ];
^     })
^   ];
^ };

  home.file = {
	  ##<!--rime-->##
	  ".local/share/fcitx5/rime/default.custom.yaml".source = dotfiles/rime/default.custom.yaml;
  };


  home.sessionVariables = {
    ## <!--fcitx5--> 
	  XMODIFIERS = "@im=fcitx";
    GTK_IM_MODULE = "fcitx5";
    QT_IM_MODULE = "fcitx5";
  };

    
}

