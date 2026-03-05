{ config, pkgs, ... }:  # 这些参数由构建系统自动输入，你先别管

{
  
  programs.nushell = {
    enable = true;
    configFile.source = ../../../dotfiles/nushell/config.nu;
  };
    
}

