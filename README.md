# Install
########################################
cp -a .vim ~/.vim
cp -a .vimrc ~/.vimrc

# Ctags:
cd ~/.vim/depends/
unzip ctags-5.8.zip
cd ctags-5.8
./configure
make
sudo make install

# vim 7.4.2367
wget https://github.com/vim/vim/archive/v7.4.2367.tar.gz    
tar zxvf v7.4.2367.tar.gz  
cd vim-7.4.2367/src/
sudo make && sudo make install

# Cscope:
参考Ctags步骤.
##################[快捷键定义]#################
# 窗口类:
f2    鼠标使能切换
\f2   行号显示切换
f3    tagbarlist
\f3   NERDTree
f4    Ctrlp,文件模糊搜索,也可按ctrl+p打开,按esc退出
\f4   MRU,文件打开历史记录,可保存
f5    make tags,用于查看代码进入函数跳转,支持多目录加载
\f5   make cscope,ctags的升级,功能更强大,暂不支持多目录加载
f6    Buf exploler,当前文件打开记录缓存
\f6   miniBufExploler,跟上一个类同
\f7   themes switch

# 文件跳转:
1     跳转到上一个文件
2     跳转到下一个文件
\1    关闭当前文件
3     quickfix列表搜索文件条状到下一个
4     quickfix跳转到上一个

# 更新插件:
\3    更新插件

# 退出:
\q    退出当前窗口
\qa   不保存seesion.vim退出全部
\qs   保存session.vim退出全部
F2    同\qs
\w    :w

# ACK搜索相关:
\s    Ack 搜索,先按下\s,再输入需要搜索的字符,回车
\f    AckFile搜索,同上

# ag 搜索
sudo apt-get install silversearcher-ag

# Cscope相关:
cc  搜索该函数调用的函数
cd  搜索调用该函数的函数
cs  搜索函数
cf  搜索文件
ct  搜索字符串


# 特殊命令：
# 有时候vim的历史记录会有混乱，这个时候有两种方式还原：
1> rm -rf ~./ctags/
2> vim clean

#############[ push code to github ]#####################
# Push:
# You can do :

git add .;
git commit -am "<xxx>";
git remote add origin https://github.com/guomingyi/vim-warper.git
git pull origin master;   
git push -u origin master;
# now, you need input username & password..

# Or:
./push "xxx"

# Download:
git clone https://github.com/guomingyi/vim-warper.git

# Update:
git pull origin master;  

# END
