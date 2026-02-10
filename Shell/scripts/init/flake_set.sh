#!/bin/sh

echo "==???==>/etc/nix/nix.conf是否设置完成???"
echo "==???==>~/.config/home-manager/flake.nix是否设置完成？？？"
echo "==ok type yes <<"
read isok
case "$isok" in
yes | y | Yes | YES)
  cd ~/.config/home-manager
  if [ -f flake.nix ]; then
    echo $PWD
    home-manager switch --flake .
  else
    echo "==!!!==>flake.nix not exist"
    exit 1
  fi
  ;;
[nN]*)
  echo "==!!!==>retry"
  exit 1
  ;;
*)
  echo "==!!!==>enter error"
  exit 1
  ;;
esac

exit 0
