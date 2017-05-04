#!/bin/sh
set -e

cd ~/.vim_configs

echo '
source ~/.vim_configs/basic.vim
source ~/.vim_configs/filetypes.vim
source ~/.vim_configs/plugins_config.vim
source ~/.vim_configs/extended.vim
try
source ~/.vim_configs/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
