#!/bin/bash

WALLPAPER_DIR="/home/angloong/Pictures/background/web260417"
TRANSITION_DELAY=60

function getdir() {
  for element in $(ls $1); do
    dir_or_file=$1"/"$element
    if [ -d $dir_or_file ]; then
      getdir $dir_or_file
    else
      echo $dir_or_file
    fi
  done
}

while true; do
  WALLPAPER=$(getdir $WALLPAPER_DIR | shuf -n 1)
  echo "==>$WALLPAPER=="
  #awww img "$WALLPAPER_DIR/$WALLPAPER" --transition-type random
  awww img "$WALLPAPER" --transition-type random --resize fit
  sleep $TRANSITION_DELAY # s
done
