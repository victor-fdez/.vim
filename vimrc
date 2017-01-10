"===============================================================================
"          File:  .vimrc
"
"   Description:
"
"   VIM Version:  7.0+
"        Author:  YOUR NAME (),
"  Organization:
"       Version:  1.0
"       Created:  11/23/15 15:04:33
"      Revision:  ---
"       License:  Copyright (c) 2015, YOUR NAME
"===============================================================================
execute pathogen#infect()
syntax on
filetype plugin indent on
colorscheme koehler
"-------------------------------------------------------------------------------
" NerdTree Plugin Options
"-------------------------------------------------------------------------------
let NERDTreeDirArrows=0
map <C-n> :NERDTreeToggle<CR>
set tabstop=2 
set expandtab
set shiftwidth=2
" tsuquyomi
let g:tsuquyomi_completion_detail = 1
autocmd FileType typescript setlocal completeopt+=menu,preview
" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" ts pretty html templates
autocmd FileType javascript JsPreTmpl html
autocmd FileType typescript JsPreTmpl markdown
"autocmd FileType typescript syn clear foldBraces " For leafgarland/typescript-vim users only. Please see #1 for details.
