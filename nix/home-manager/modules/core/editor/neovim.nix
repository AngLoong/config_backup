{ config, pkgs, ... }:

  {
  programs = {
    ## <!--nvim--> 
    neovim = {
      enable = true;
      plugins = [
      ];
      waylandSupport = true; # wayland clipboard support
    };
  };

  home.file = {
    ## <!--nvim-->
    #".config/nvim".source = "/home/angloong/.config/home-manager/dotfiles/lazyvim";
	  ".config/nvim".source = ./../../../dotfiles/lazyvim;
	  ".config/nvim".recursive = true;

  };

}
