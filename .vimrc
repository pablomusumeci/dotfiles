set relativenumber
set t_Co=256
syntax on
" set dark background and color scheme
colorscheme Monokai 
" Cambio escape por jj"
inoremap jj <Esc>
" Desactivo esc"
inoremap <Esc> <nop>
" Aca me vuelvo hombre"
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
" gb muestra lista de buffers http://stackoverflow.com/questions/16082991/vim-switching-between-files-rapidly"
nnoremap gb :ls<CR>:b<Space>

" Cambio TAB por espacios
set expandtab
set tabstop=4
set shiftwidth=4

" Cambio caracteres ocultos
set listchars=tab:▸\ ,eol:¬

" Caracteres ocultos visibles
set list

" indentLine
let g:indentLine_enabled = 1
let g:indentLine_char = '|'
let g:indentLine_color_term = 239
" Give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>
" Plugins
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic.git'
Plugin 'Yggdroot/indentLine'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" autopen NERDTree and focus cursor in new document
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" airline symbols
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='powerlineish'

" syntastic symbols
let g:syntastic_error_symbol = '✗'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'
let g:syntastic_style_warning_symbol = '!'

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
