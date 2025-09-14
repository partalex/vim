let mapleader = ' '


nnoremap <leader>wq :wq<CR>
nnoremap <leader>ww :w<CR>
nnoremap <leader>qq :q!<CR>
" nnoremap <leader>pp "+p
" nnoremap <leader>yy "+y
" vnoremap <leader>y "+y


vnoremap < <gv
vnoremap > >gv
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv


" colorscheme desert
set scrolloff=5
set incsearch
set hlsearch
set smartcase
set number
set showmatch
set autoindent
set smartindent
set laststatus=2
noremap <Esc> :nohlsearch<cr>


" Indent with spaces instead of tabs
set expandtab
set tabstop=4
set shiftwidth=4


" ************ Initialize vim-plug ************
" call plug#begin('~/.vim/plugged')
" NERDTree plugin
" Plug 'preservim/nerdtree'