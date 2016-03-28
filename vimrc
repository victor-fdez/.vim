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
