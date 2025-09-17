let mapleader = ' '

nnoremap <leader>qq :q!<CR>
nnoremap <leader>s :x

vnoremap > >gv
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv

set ic
set hlsearch
set incsearch
set smartcase
set showmatch
noremap <Esc> :nohlsearch<cr>
xnoremap * y/\V<C-R>"<CR>

set number
set tabstop=4
set expandtab
set autoindent
set scrolloff=5
set smartindent
set shiftwidth=4
set laststatus=2
colorscheme retrobox

" ************ Initialize vim-plug ************
" call plug#begin('~/.vim/plugged')
" NERDTree plugin
" Plug 'preservim/nerdtree'