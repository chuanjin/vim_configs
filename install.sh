#!/bin/sh
set -e

cd ~/.vim_configs

echo 'source ~/.vim_configs/basic.vim
source ~/.vim_configs/filetypes.vim
source ~/.vim_configs/plugins_config.vim
source ~/.vim_configs/extended.vim
try
source ~/.vim_configs/my_configs.vim
catch
endtry' > ~/.vimrc

apt install vim curl build-essential cmake python-dev python3-dev

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +PlugInstall +qall

~/.vim/plugged/YouCompleteMe/install.py

echo "Installed successfully! Enjoy :-)"
