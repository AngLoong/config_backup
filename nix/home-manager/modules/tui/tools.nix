{ pkgs, ... }:
{
  home.packages = [
    pkgs.trash-cli
    pkgs.zip
    pkgs.unzip
    pkgs.grim # 截图
    pkgs.slurp # 划定区域，配合截图
  ];
}
