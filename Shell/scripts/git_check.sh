#!/bin/sh

path_con_bac=~/Backup/config_backup/
path_con_bac_gitee=~/Backup/config_backup-gitee/
path_obsidian=~/Notes/ObsidianWorkspaces/
path_logseq=~/Notes/LogseqWorkspaces/

ischanged() {
  cd "$1"
  if [ -n "$(git status -s)" ]; then
    echo "==>$1"
  else
    :
  fi

}

for var in $path_con_bac $path_con_bac_gitee $path_obsidian $path_logseq; do
  ischanged $var
done

exit 0

## config_back
#cd $path_con_bac
#if [ -n "$(git status -s)" ]; then
#  echo $path_con_bac
#else
#  echo "no change "
#fi
