{ pkgs, ... }:
{
  home.packages = [
    pkgs.lynx
  ];

  home.file = {
    ".lynxrc".source = ../../dotfiles/lynx/lynxrc;
  };

}
