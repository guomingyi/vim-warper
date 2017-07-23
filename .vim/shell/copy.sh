#!/bin/bash

sourcepath=$PWD
temp=$sourcepath
#temp=${sourcepath/"$HOME"/""}

tagpath=~/.ctags/${temp//"/"/"_"}

#mkdir -p $tagpath
echo "pwd:$sourcepath,temp:$temp tagpath: $tagpath"

rm -rf ~/.ctags/session.vim
cp -a $tagpath/* ~/.ctags

exit 0

