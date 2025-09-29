set ic
set hlsearch
set incsearch
set smartcase
set showmatch
xnoremap * y/\V<C-R>"<CR>
noremap <Esc> :nohlsearch<CR>

xnoremap < <gv
xnoremap > >gv
xnoremap K :m '<-2<CR>gv=gv
xnoremap J :m '>+1<CR>gv=gv

set nu rnu
set tabstop=4
set expandtab
set autoindent
set scrolloff=5
set smartindent
set shiftwidth=4
set laststatus=2
let mapleader = ' '
colorscheme retrobox

nnoremap <leader>s :x<CR>
nnoremap <leader>qq :q!<CR>

" ************ Initialize vim-plug ************
" call plug#begin('~/.vim/plugged')
" NERDTree plugin
" Plug 'preservim/nerdtree'