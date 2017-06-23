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
Helptags
syntax on
filetype plugin indent on
au BufRead,BufNewFile Dockerfile* set filetype=Dockerfile
au BufRead,BufNewFile Dockerfile set filetype=Dockerfile
"-------------------------------------------------------------------------------
" NerdTree Plugin Options
"-------------------------------------------------------------------------------
let NERDTreeDirArrows=0
map <C-n> :NERDTreeToggle<CR>
set tabstop=2 
set expandtab
set shiftwidth=2
" vim typescript
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
"-------------------------------------------------------------------------------
" Syntastic
"-------------------------------------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_tidy_ignore_errors = [
    \  'plain text isn''t allowed in <head> elements',
    \  '<base> escaping malformed URI reference',
    \  'discarding unexpected <body>',
    \  '<script> escaping malformed URI reference',
    \  '</head> isn''t allowed in <body> elements',
    \  '<template> is not recognized!'
    \ ]
let g:syntastic_html_tidy_quiet_messages = { "level" : "warnings" }
let syntastic_mode_map = { 'passive_filetypes': ['html'] }
"-------------------------------------------------------------------------------
" Tsuquyomi
"-------------------------------------------------------------------------------
autocmd FileType typescript setlocal completeopt+=menu,preview
let g:tsuquyomi_completion_detail = 1
autocmd FileType typescript nmap <buffer> <Leader>e <Plug>(TsuquyomiRenameSymbol)
autocmd FileType typescript nmap <buffer> <Leader>E <Plug>(TsuquyomiRenameSymbolC)
" ts pretty html templates
autocmd FileType javascript JsPreTmpl html
autocmd FileType typescript JsPreTmpl html
autocmd FileType typescript syn clear foldBraces
"-------------------------------------------------------------------------------
" Colorscheme
"-------------------------------------------------------------------------------
syntax enable
" set background=dark
set number
let g:solarized_termcolors=256
if has('gui_running')
  set background=light
else
  set background=dark
endif
colorscheme solarized
"-------------------------------------------------------------------------------
" CtrlP
"-------------------------------------------------------------------------------
nmap <Leader>r :CtrlPMRU<CR>
let g:ctrlp_max_files = 10000
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|node_modules)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

"-------------------------------------------------------------------------------
" Terraform
"-------------------------------------------------------------------------------
let g:terraform_align=1

"-------------------------------------------------------------------------------
" Neocomplete
"-------------------------------------------------------------------------------
let g:neocomplete#enable_at_startup = 1
"-------------------------------------------------------------------------------
" Go
"-------------------------------------------------------------------------------
let g:go_fmt_command = "goimports"
let g:go_build_tags = ''
"let g:go_gorename_prefill = 1
au FileType go nmap <leader>gor <Plug>(go-run)
au FileType go nmap <leader>gob <Plug>(go-build)
au FileType go nmap <leader>got <Plug>(go-test)
au FileType go nmap <leader>goc <Plug>(go-coverage)
"-------------------------------------------------------------------------------
" TagBar
"-------------------------------------------------------------------------------
nmap <F8> :TagbarToggle<CR>
"-------------------------------------------------------------------------------
" Airline
"-------------------------------------------------------------------------------
let g:airline#extensions#tabline#enabled = 1
