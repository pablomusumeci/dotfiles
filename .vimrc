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
