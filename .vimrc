let mapleader = ' '


nnoremap <leader>qq :q!<CR>
nnoremap <leader>pp "+p
nnoremap <leader>yy "+y
vnoremap <leader>y "+y


vnoremap < <gv
vnoremap > >gv
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv


" colorscheme desert
set incsearch
set hlsearch
set ic
set smartcase
set showmatch
noremap <Esc> :nohlsearch<cr>


set scrolloff=5
set autoindent
set number
set smartindent
set laststatus=2
set expandtab
set tabstop=4
set shiftwidth=4


" ************ Initialize vim-plug ************
" call plug#begin('~/.vim/plugged')
" NERDTree plugin
" Plug 'preservim/nerdtree'