#!/bin/bash

sourcepath=$PWD
temp=$sourcepath

tagpath=~/.ctags/${temp//"/"/"_"}
mkdir -p $tagpath
cd $tagpath

ctags -R $sourcepath >/dev/null 2>&1
echo $tagpath/tags

exit 0
