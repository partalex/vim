set ic
set hlsearch
set incsearch
set smartcase
set showmatch

set nu
set tabstop=4
set expandtab
set splitright
set autoindent
set scrolloff=5
set smartindent
set shiftwidth=4
set laststatus=2
let mapleader = ' '
colorscheme retrobox

xnoremap * y/\V<C-R>"<CR>
noremap <Esc> :nohlsearch<CR>

xnoremap < <gv
xnoremap > >gv
xnoremap K :m '<-2<CR>gv=gv
xnoremap J :m '>+1<CR>gv=gv

nnoremap <leader>s :x<CR>
nnoremap <leader>qq :q!<CR>

tnoremap <leader>j <C-w>N
nnoremap <leader>t :vert term<CR>

nnoremap <C-Right> 20<C-w>>
nnoremap <C-Left> 20<C-w><

nnoremap <leader>cs :w $MYVIMRC<CR>:source $MYVIMRC<CR>:echo "✅ updated"<Esc>
" ************ Initialize vim-plug ************
" call plug#begin('~/.vim/plugged')
" NERDTree plugin
" Plug 'preservim/nerdtree'