#!/bin/bash

sourcepath=$PWD
temp=$sourcepath

find ./ -name "*.c" -o -name "*.h" -o -name "*.cpp" -o -name "*.cc" -o -name "*.java" -o -name "Makefile" -o -name "*.mk" -o -name "Kconfig" -o -name "*config" -o -name "*.dts" -o -name "*.xml" -o -name "*.sh" >./cscope.files

cscope -Rbq

tagpath=~/.ctags/${temp//"/"/"_"}

mkdir -p $tagpath

mv -f ./cscope.* $tagpath
cp -a $tagpath/cscope.* ~/.ctags

cd $tagpath
#pwd
#ls -al
#ctags -R $sourcepath >/dev/null 2>&1

export CSCOPE_DB=$tagpath/cscope.out
source ~/.bashrc
echo $tagpath/cscope.out

exit 0
