#!/bin/bash

sourcepath=$PWD
temp=$sourcepath
#temp=${sourcepath/"$HOME"/""}

tagpath=~/.ctags/${temp//"/"/"_"}

#mkdir -p $tagpath
#echo "pwd:$sourcepath,temp:$temp tagpath: $tagpath"

rm -rf ~/.ctags/*.vim ~/.ctags/cscope.*
rm -rf $tagpath


exit 0

