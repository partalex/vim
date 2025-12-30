" vim ~/.vimrc
" source ~/.vimrc
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" ******************** Netrw ********************************
let g:netrw_banner = 0                      " hide help banner
" let g:netrw_liststyle = 3                 " tree view
let g:netrw_browse_split = 4                " open in prior window
" let g:netrw_altv = 1                      " vertical splits to the right
" hide only ./ and ../
let g:netrw_hide = 1
let g:netrw_list_hide = '^\./$,^\.\./$'

" ******************** Search *******************************
set hlsearch
set incsearch
set smartcase
set ignorecase
set showmatch
xnoremap * y/\V<C-R>"<CR>
noremap <Esc> :nohlsearch<CR>

" ******************** Clipboard ****************************
nnoremap <leader>xc :%y<CR>
nnoremap <leader>xd :%d<CR>

" ******************** Editing ******************************
set nu
" set rnu
syntax on
set cursorline
set tabstop=2
set expandtab
set splitright
set autoindent
xnoremap < <gv
xnoremap > >gv
set scrolloff=8
set smartindent
set shiftwidth=4
set laststatus=2
map <leader>D :t.<CR>
let mapleader = ' '
nmap <leader>v ^vg_
filetype plugin indent on
xnoremap K :m '<-2<CR>gv=gv
xnoremap J :m '>+1<CR>gv=gv
" colorscheme retrobox
" colorscheme desert
noremap <leader>e :tabnew<cr>:execute 'explore ' . expand('%:p:h')<cr>

" ******************** Navigation ***************************
nnoremap <C-j> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-d> <C-d>zt
nnoremap <C-u> <C-u>zt
nnoremap <leader>- :topleft vsplit<CR>
nnoremap <leader>= :botright vsplit<CR>

" ******************** Tabs *********************************
" Alt + w is escape
nnoremap <Esc>s :w<CR>
nnoremap <Esc>w :bd<CR>
nnoremap <Esc>W :q!<CR>
nnoremap <C-k> :bnext<CR>
" nnoremap <C-K> :bprev<CR>
" nnoremap <C-Right> 20<C-w>>
" nnoremap <C-Left> 20<C-w><

" ******************** Source vimrc *************************
nnoremap <leader>cc :edit $MYVIMRC<CR>
nnoremap <leader>cs :w $MYVIMRC<CR>:source $MYVIMRC<CR>:echo "✅ updated"<Esc>

" ******************** Fuzzy/Ripgrep ************************
nnoremap <leader>gf :Files<CR>
nnoremap <leader>gb :Buffers<CR>
nnoremap <leader>F :Rg<CR>
" install ripgrep, fd-find, fzf, batcat
set wildignore+=*/.git/*,*/__pycache__/*,*.pyc
"let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --glob "!.git/*"'
let $FZF_DEFAULT_COMMAND = 'fdfind --type f --hidden --follow --exclude .git'
let g:fzf_preview_window = ['right:60%', 'ctrl-/']

" ******************** Airline ******************************
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
nnoremap <leader>1 :b1<CR>
nnoremap <leader>2 :b2<CR>
nnoremap <leader>3 :b3<CR>

" ******************** VimPlug ******************************
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" ******************** Terminal ***************************
" tnoremap <leader>t <C-w>N
" nnoremap <leader>t :vert term<CR>