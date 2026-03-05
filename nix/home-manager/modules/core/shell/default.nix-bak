{ config, ... }:
let
  shellAliases = {
    k = "kubectl";
    nv = "nvim";
    
  };

  #localBin = "${config.home.homeDirectory}/.local/bin";
  #goBin = "${config.home.homeDirectory}/go/bin";
  #rustBin = "${config.home.homeDirectory}/.cargo/bin";
  #npmBin = "${config.home.homeDirectory}/.npm/bin";
in
{

  # NOTE: only works in bash/zsh, not nushell
  home.shellAliases = shellAliases;
  
  # NOTE: nushell will be launched in bash, so it can inherit all the eenvironment variables.
  #programs.nushell = {
  #  enable = true;
  #  configFile.source = ./config.nu;
  #  inherit shellAliases;
  #};
  
  
}
