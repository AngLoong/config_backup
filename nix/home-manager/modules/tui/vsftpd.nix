{ pkgs, ... }:
{
  home.packages = [
    pkgs.vsftpd
  ];

#  home.file = {
#    ".lynxrc".source = ../../dotfiles/lynx/lynxrc;
#  };

}
