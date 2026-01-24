#!/bin/bash

# 使用相对路径，保持封闭性，或称原子性，是同步的多台主机之间都可以使用。
nowlogfile="./logs/commitLog.md"

git status
echo "---------<notice>---------"
tail -n20 $nowlogfile
echo "----------<<>>--------"
echo "enter y to commit; n to cancel"

read answer

if [ "$answer" = "y" ] 
then
	filename=$(date +"./logs/%Y-%m-%dT%H-%M.log")
	echo $filename
	cp $nowlogfile $filename
	message=$(tail $nowlogfile)
	rm $nowlogfile
	touch $nowlogfile
	git add *
	git commit -m "$message"
	#git commit -F $nowlogfile
	#rm $nowlogfile
	#touch $nowlogfile
elif [ "$answer" = "n" ] ; then
	echo "elif"
else
	echo "else"
fi

exit 0


