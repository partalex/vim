" Highlight search results
set incsearch
set hlsearch
set smartcase

" Indent with spaces instead of tabs
set expandtab
set tabstop=4
set shiftwidth=4

" Clipboard
set clipboard+=unnamed

" NoHlSearch
noremap <Esc> :nohlsearch<cr>

" Enable mouse support
set mouse=a

" Show matching brackets
set showmatch

" Enable auto-indentation
set autoindent
set smartindent

" Show status line
set laststatus=2

" Set colorscheme
colorscheme desert


" Initialize vim-plug
call plug#begin('~/.vim/plugged')

" NERDTree plugin
Plug 'preservim/nerdtree'

" (Optional) Add some extras you may want
Plug 'Xuyuanp/nerdtree-git-plugin'   " Shows git status in tree
Plug 'ryanoasis/vim-devicons'        " File icons (requires patched font)

call plug#end()

" === Keybindings & settings ===
map <C-n> :NERDTreeToggle<CR>  " Ctrl+n to toggle NERDTree
" autocmd VimEnter * NERDTree    " Open NERDTree at startup
autocmd VimEnter * if argc() == 0 | NERDTree | endif

