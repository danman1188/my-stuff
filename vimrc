filetype plugin indent on
syntax enable

set clipboard=unnamed
set tabstop=2
set shiftwidth=2
set expandtab
set nu
set laststatus=2
set foldmethod=syntax
set foldlevel=99
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*
set colorcolumn=120

"let g:used_javascript_libs = 'underscore,chai'
let g:ycm_seed_identifiers_with_syntax = 0
let g:terraform_align = 1
let g:terraform_fmt_on_save = 1

" put key remapping here
nnoremap gh :tabp<CR>
nnoremap gl :tabn<CR>
nnoremap <silent> gj :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> gk :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
noremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-p> :CtrlP<CR>
nnoremap gq :YcmCompleter GoTo<CR>
nnoremap gw :YcmCompleter GetType<CR>
nnoremap ge :YcmCompleter GoToReferences<CR>

let notabs = 0
nnoremap <silent> <F8> :let notabs=!notabs<Bar>:if notabs<Bar>:tabo<Bar>:else<Bar>:tab ball<Bar>:tabn<Bar>:endif<CR>

" put status item displays here
set statusline+=col:\%c

call plug#begin('~/.vim/plugged')

Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --ts-completer' }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'hashivim/vim-terraform'
Plug 'pangloss/vim-javascript'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'ctrlpvim/ctrlp.vim', {'on': ['CtrlP', 'CtrlPMixed', 'CtrlPMRU']}
Plug 'ntpeters/vim-better-whitespace'
Plug 'gavocanov/vim-js-indent'
Plug 'leafgarland/typescript-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'ekalinin/Dockerfile.vim'

call plug#end()
