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
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'itchyny/lightline.vim'
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax

Plug 'neoclide/coc.nvim', {'branch': 'release'}

let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier']
let g:coc_node_path = "/usr/local/bin/node"

call plug#end()

au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

set termguicolors     
" enable true colors support 

colorscheme tokyonight-night
let g:lightline = {'colorscheme': 'tokyonight'}

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

