#!/bin/bash

sourcepath=$PWD
temp=$PWD
#temp=${sourcepath/"$HOME"/""}

tagpath=~/.ctags/${temp//"/"/"_"}

mkdir -p $tagpath

echo $tagpath/session.vim

