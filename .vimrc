set relativenumber
set t_Co=256
syntax on
" set dark background and color scheme
colorscheme wombat256
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
"Movimiento entre buffers con alt tab http://vim.wikia.com/wiki/Switching_between_files"
nnoremap <C-Tab> :bn<CR>
nnoremap <C-S-Tab> :bp<CR>
"Indentacion inteligente en new line
set autoindent 
" Give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>
" Plugins
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree.git'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" autopen NERDTree and focus cursor in new document
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
