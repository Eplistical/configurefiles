" configuration for vundle
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'tmhedberg/SimpylFold'
call vundle#end()
filetype plugin indent on    " required


" configuration for YouCompleteMe
let g:ycm_global_ycm_extra_conf = '/home/ep/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_seed_identifiers_with_syntax = 1  
let g:ycm_confirm_extra_conf=0
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_show_diagnostics_ui=0
"set completeopt-=preview

" NERDTree
nnoremap  nd :Helptag<CR>:NERDTree<CR>

" split windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" different mode 
noremap <F1> :set invnumber<CR>
noremap <F2> :set invwrap<CR>
noremap <F3> :set invautoindent<CR>

" basic configurations 
syntax on
set fileformat=unix
set encoding=utf-8
set backspace=indent,eol,start	
set autoindent
set hlsearch
set number
set nowrap

" global format
set tabstop=4
set shiftwidth=4
set noexpandtab

" global folding
set foldmethod=syntax
set foldlevel=99
nnoremap <space> za

" split 
set splitbelow
set splitright

" pathogen 
execute pathogen#infect()

" open file at the position as last time exit
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

