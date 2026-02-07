#!/bin/sh
#下列软件无法通过nix安装

## <!--alacritty--> 需要GPU

## <!--kitty-->需要GPU

## <!--davfs2--> 需要sudo运行

## <!--vscode--> 非开源，nix中需要设置非自由软件许可。
yay -S visual-studio-code
