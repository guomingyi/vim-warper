#!/bin/bash

sourcepath=$PWD
temp=$sourcepath
#temp=${sourcepath/"$HOME"/""}

tagpath=~/.ctags/${temp//"/"/"_"}

#echo "sourcepath:$sourcepath temp:$temp tagpath $tagpath"
#exit 0
mkdir -p $tagpath

cd $tagpath

ctags -R $sourcepath

echo $tagpath/tags

#cp $tagpath/tags ~/.ctags/tags # current ctags default location.

exit 0
