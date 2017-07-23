# Install
########################################
cp -a .vim ~/.vim
cp -a .vimrc ~/.vimrc

cd ~/.vim/bundle/ctags-5.8/
./configure
make
sudo make install

########################################
# shortcut key
f2    鼠标使能切换
\f2   行号显示切换
f3    tagbarlist
\f3   NERDTree
f4    Ctrlp,文件模糊搜索
\f4   MRU,文件打开历史记录,可保存
f5    make tags,用于查看代码进入函数跳转
\f5   make cscope, ctags的升级
f6    Buf exploler,当前文件打开记录
\f6   miniBufExploler,跟上一个类同
\f7   themes switch

1     跳转到上一个文件
2     跳转到下一个文件
\1    关闭当前文件
\3    更新插件
3     quickfix列表搜索文件条状到下一个
4     quickfix跳转到上一个

\s    Ack 搜索,先按下\s,再输入需要搜索的字符,回车
\f    AckFile搜索,同上
\q    退出当前窗口
\qa   退出全部
\w    :w

特殊命令：
有时候vim的历史记录会有混乱，这个时候有两种方式还原：
１＞rm -rf ~./ctags/
２＞vim clean
########################################


# address
https://github.com/guomingyi/vim-warper.git

# Username & password:
**********
**********


# Push code:

git add .;
git commit -am "<xxx>";
git remote add origin https://github.com/guomingyi/vim-warper.git
git pull origin master;   
git push -u origin master;


# Code download:

git clone https://github.com/guomingyi/vim-warper.git
git pull origin master;  

