call plug#begin('~/.vim/plugged')

" Plugins
Plug 'tomtom/tcomment_vim'
Plug 'airblade/vim-gitgutter'
Plug 'Valloric/YouCompleteMe'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'kbarrette/mediummode'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'helino/vim-json'
Plug 'PeterRincker/vim-argumentative'
Plug 'vim-airline/vim-airline'
    let g:airline_powerline_fonts = 1
Plug 'altercation/vim-colors-solarized'
    let g:solarized_contrast="high"
    let g:solarized_visibility="normal"
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
call plug#end()
" Don't forget to run `PlugInstall` to install the plugins.

syntax on

set tabstop=4
set shiftwidth=4
set expandtab
set number
set ruler
set cursorline
set colorcolumn=80
set background=dark
colorscheme solarized
set guifont=Droid\ Sans\ Mono\ for\ Powerline
set guicursor=n:blinkon0
set linespace=8
set noshowmode
autocmd BufRead,BufNewFile *.{md,txt} setlocal spell spelllang=en_gb
set complete+=kspell

" Clear trailing whitespace on file save
autocmd BufWritePre * :%s/\s\+$//e

" How hard can it be?
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
