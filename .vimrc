" ******************** Base *******************************
syntax on                                                                    2 set number
set number
set cursorline
set autoindent
" set nowrap
" set scrolloff=8
" set laststatus=2


" ******************** Editing *****************************
set clipboard+=unnamed


" ******************** Leader ******************************
let mapleader = ' '


" ******************** Search ******************************
set incsearch
set hlsearch
set ic
set smartcase
noremap <Esc> :nohlsearch<cr>
