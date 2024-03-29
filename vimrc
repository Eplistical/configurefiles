" basic
syntax on
" Use new regular expression engine
set re=0

" disable syntax for large files to speed up open
autocmd BufWinEnter * if line2byte(line("$") + 1) > 500000 | syntax clear | endif

filetype plugin indent on
set backspace=indent,eol,start
set fileformat=unix
set encoding=utf-8
set number hlsearch autoindent nowrap ruler

" text format
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent

" spell
set spelllang=en
set nospell
"set spellfile=$HOME/Dropbox/configurefiles/vim/spell/en.utf-8.add
hi SpellBad ctermbg=124 ctermfg=255

" move
nnoremap B 5b
nnoremap W 5w

" folding
set foldmethod=syntax
set foldlevel=99
"nnoremap <space> za
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
highlight Folded ctermbg=white ctermfg=black

" open file at the position as last time exit
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" split windows
set splitbelow splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" different mode
noremap <F1> :set invnumber<CR>
noremap <F2> :set invwrap<CR>
noremap <F3> :set invautoindent<CR>
noremap <F9> :set invspell<CR>

" no alert sound
set visualbell
set t_vb=

" term
if $TERM =~ 'xterm-256color'
    set noek
endif

set pastetoggle=<F5>
set nocompatible
