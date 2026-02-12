{ pkgs, ... }:
{
  home.packages = [
    pkgs.deluge
    pkgs.thunderbird
    pkgs.yandex-disk
  ];
}
