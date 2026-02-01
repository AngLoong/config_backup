#!/bin/sh
##在~/.bash_profile添加source

set aly_dir /home/angloong/.config/home-manager/dotfiles/ALy
set aly_sh_dir $aly_dir/sh
#export TMP_A=aly_sh

##<!--aliases-->
. aly_sh_dir/aliases_ALy.sh

#for file in $(ls $aly_sh_dir) 
#do
#	. $aly_sh_dir/$file	
#done  #bash-shell
#end #fish-shell

