set shell=/bin/zsh

" Map Caps Lock to Escape when enter vim
au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
" Returns normal functionality to Caps Lock when quit vim
" au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

" Show relative line numbers by default
set rnu
set number

inoremap <C-A> <Home>
inoremap <C-E> <End>
vnoremap <C-A> <Home>
vnoremap <C-E> <End>

noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

nmap     <C-S>f <Plug>CtrlSFPrompt
vmap     <C-S>f <Plug>CtrlSFVwordPath
vmap     <C-S>e <Plug>CtrlSFVwordExec
nmap     <C-S>c <Plug>CtrlSFCwordPath
nmap     <C-S>p <Plug>CtrlSFPwordPath
nnoremap <C-S>o :CtrlSFOpen<CR>
nnoremap <C-S>t :CtrlSFToggle<CR>
inoremap <C-S>t <Esc>:CtrlSFToggle<CR>

" Remove the red line at 80 column
let g:pymode_options_colorcolumn = 0

" NERT tree show from left
let g:NERDTreeWinPos = "left"


" Colorscheme
colorscheme gruvbox
if has('gui_running')
    set background=light
    set guifont=Source\ Code\ Pro\ for\ Powerline\ 14
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
let g:syntastic_ignore_files = ['html$']

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

autocmd FileType vue syntax sync fromstart

let g:indentLine_setColors = 0
" Vim
let g:indentLine_color_term = 239

"GVim
let g:indentLine_color_gui = '#A4E57E'

" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)


let g:lightline = {
            \ 'component_function': {
            \   'filetype': 'MyFiletype',
            \   'fileformat': 'MyFileformat',
            \ }
            \ }


" Replace filename component of Lightline statusline
let g:lightline = {
            \ 'component_function': {
            \   'filename': 'FilenameForLightline'
            \ }
            \ }

" Show full path of filename
function! FilenameForLightline()
    return expand('%')
endfunction


"function! MyFiletype()
"  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
"endfunction

"function! MyFileformat()
"  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
"endfunction


let g:NERDTreeIndicatorMapCustom = {
            \ "Modified"  : "✹",
            \ "Staged"    : "✚",
            \ "Untracked" : "✭",
            \ "Renamed"   : "➜",
            \ "Unmerged"  : "═",
            \ "Deleted"   : "✖",
            \ "Dirty"     : "✗",
            \ "Clean"     : "✔︎",
            \ 'Ignored'   : '☒',
            \ "Unknown"   : "?"
            \ }

set encoding=utf8
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1


if exists('+colorcolumn')
    set colorcolumn=80
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

set textwidth=80

" disable header folding
let g:vim_markdown_folding_disabled = 1

" do not use conceal feature, the implementation is not so good
let g:vim_markdown_conceal = 0

" disable math tex conceal feature
let g:tex_conceal = ""
let g:vim_markdown_math = 1


" Or, you could disable showmode alltogether.
set noshowmode
let g:echodoc_enable_at_startup = 1
