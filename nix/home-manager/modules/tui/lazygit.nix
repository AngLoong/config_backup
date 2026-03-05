{ config, lib, pkgs, ... }:  # 这些参数由构建系统自动输入，你先别管

{
  programs.lazygit = {
    enable = true;

    enableBashIntegration = true;
    enableFishIntegration = true;
    enableNushellIntegration = true;

    settings = {
      gui.theme = {
      lightTheme = true;
      activeBorderColor = [ "blue" "bold" ];
      inactiveBorderColor = [ "black" ];
      selectedLineBgColor = [ "default" ];
      };       
    };
    
    shellWrapperName = "lg";

  };    
}

