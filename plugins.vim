"""""""""""""""""""""""""""""""""""""
" => plugins
"""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ivalkeen/vim-ctrlp-tjump'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-rails'
Plug 'elixir-lang/vim-elixir'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
" Plug 'mileszs/ack.vim' replaced by ctrlsf
Plug 'nvie/vim-flake8'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'airblade/vim-gitgutter'
Plug 'morhetz/gruvbox'
Plug 'connorholyday/vim-snazzy'
Plug 'dense-analysis/ale'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'terryma/vim-expand-region'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'posva/vim-vue'
Plug 'gregsexton/MatchTag'
Plug 'pangloss/vim-javascript'
Plug 'othree/html5.vim'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'junegunn/goyo.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'Shougo/echodoc.vim'
Plug 'mhinz/vim-startify'
Plug 'junegunn/vim-peekaboo'
Plug 'jlanzarotta/bufexplorer'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
" Always load the vim-devicons as the last one
Plug 'ryanoasis/vim-devicons'
call plug#end()
