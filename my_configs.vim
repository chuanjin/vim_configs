set shell=/bin/zsh

" Show line numbers by default
set number

" Remove the red line at 80 column
let g:pymode_options_colorcolumn = 0

" NERT tree show from left
let g:NERDTreeWinPos = "left"


" Colorscheme
colorscheme gruvbox
if has('gui_running')
    set background=light
else
    set background=dark
endif

" Remap the default keys for yankstack
let g:yankstack_map_keys = 0
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste

nnoremap <c-p> :CtrlP<cr>

" Insert a hash rocket
imap <c-l> <space>=><space>

nnoremap <c-a> ^
nnoremap <c-e> $

nnoremap J gT
nnoremap K gt

nmap <F8> :TagbarToggle<CR>

noremap <F3> :Autoformat<CR>

nnoremap <leader>v :CtrlPtjump<cr>
vnoremap <leader>vv :CtrlPtjumpVisual<cr>
let g:ctrlp_tjump_shortener = ['/home/.*/gems/', '.../']
let g:ctrlp_tjump_only_silent = 1

" Ctag for ruby, with guard-ctags-bundler
set tags+=gems.tags

" Ctag for python
set tags+=mytags

map <leader>n :NERDTreeToggle<cr>

let g:formatter_yapf_style = 'pep8'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RENAME CURRENT FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
map <leader>nn :call RenameFile()<cr>


map M <Plug>(expand_region_expand)
map L <Plug>(expand_region_shrink)

call expand_region#custom_text_objects({
      \ "\/\\n\\n\<CR>": 1, 
      \ 'a]' :1, 
      \ 'ab' :1, 
      \ 'aB' :1,
      \ 'ii' :0,
      \ 'ai' :0,
      \ })


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab><tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
