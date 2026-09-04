{ config, pkgs, ... }:  # 这些参数由构建系统自动输入，你先别管

{
  home.shell.enableNushellIntegration = true;
  #programs.aliae.enable = true;

  imports = [
    ./nushell.nix
    ../oh-my-posh.nix
    ../zoxide.nix
  ];
}

