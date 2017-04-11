call plug#begin('~/.vim/plugged')

" Plugins
Plug 'tomtom/tcomment_vim'
Plug 'airblade/vim-gitgutter'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'elzr/vim-json'
Plug 'PeterRincker/vim-argumentative'
Plug 'vim-syntastic/syntastic'
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 0
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
    let g:syntastic_javascript_checkers = ['jshint']
Plug 'Shougo/neocomplete.vim'
    let g:neocomplete#enable_at_startup = 1
    let g:neocomplete#enable_smart_case = 1
Plug 'vim-airline/vim-airline'
    let g:airline_powerline_fonts = 1
Plug 'altercation/vim-colors-solarized'
    let g:solarized_contrast="high"
    let g:solarized_visibility="normal"
call plug#end()
" Don't forget to run `PlugInstall` to install the plugins.

syntax on

set ignorecase
set smartcase
set wildmenu
set showmatch
set incsearch
set hlsearch
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
set linespace=6
set noshowmode
set spell
autocmd BufRead,BufNewFile *.{md,txt} setlocal spell spelllang=en_gb
set complete+=kspell

" Enable NERDTree by default (except when authoring a commit message) but place cursor in other buffer
autocmd VimEnter * if &filetype !=# 'gitcommit' | NERDTree | wincmd p | endif

" Exit vim if the last buffer is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Clear trailing whitespace on file save
autocmd BufWritePre * :%s/\s\+$//e

" Update vim as .vimrc is changed
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END
au BufRead,BufNewFile *.fidl set filetype=fidl

" How hard can it be?
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
