set scrolloff=8
set number
set relativenumber
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
call plug#end()

set termguicolors     
" enable true colors support 
let ayucolor="dark" " for mirage version of theme 
colorscheme ayu

" Mapping leader key
let mapleader = " "

"""""""""""""""""""""""""""
" File exploration remaps "
"""""""""""""""""""""""""""

" project view 
nnoremap <leader>pv :Ex<CR>
" vertical split project view 
nnoremap <leader>vpv :Vex<CR>

""""""""""""""""""
" utility remaps "
""""""""""""""""""

" source the init.vim file
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>w <C-w>

nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <leader>rg :Rg<CR>
nnoremap <C-k> :cnext<CR>
nnoremap <C-j> :cprev<CR>
nnoremap <leader>y "+y
" yank whole file
nnoremap <leader>Y gg"+yG

"""""""""""""""
" Visual Mode "
"""""""""""""""

" replace highlighted selection
vnoremap <leader>p "_dP
" send highglighted selection to system clipboard
vnoremap <leader>y "+y
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

