#!/bin/sh

## 根据官方脚本安装nix
printf "%s\n" "==>开始安装nix"
sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install) --daemon

## 配置nix国内镜像源
printf "%s\n" "==>开始配置nix channel"
nix-channel --add https://nixos.org/channels/channel-name nixos #nixos 官方源
nix-channel --update

## 根据官网安装home-manager
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
nix-shell '<home-manager>' -A install

## 设置home.nix中环境变量到系统
if [ -f ~/.profile ]; then
  printf "\n\n## home-manager envirmount \nsource \$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh" >> ~/.profile
elif [ -f ~/.bash_profile]; then
  printf "\n\n## home-manager envirmount \nsource \$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh" >> ~/.bash_profile
else
  echo "==!!!==>envirmount failed"
if 

exit 0
