#!/bin/bash

git clone https://github.com/drpaneas/vimrst.git
cd vimrst
cp .vimrc $HOME
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir -p ~/.vim/colors && cd ~/.vim/colors
wget http://www.vim.org/scripts/download_script.php?src_id=13400 -O wombat256mod.vim
vim +PluginInstall +qall
cd $HOME
