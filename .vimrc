let mapleader = "\<Space>"

set nocompatible
set showcmd
set number
set ruler
set relativenumber
set nobackup
set wildmenu
set wildmode=longest:full,full
set hidden

"""" identation """"
filetype plugin indent on
set autoindent
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set virtualedit=all

"""" search """"
set hlsearch
set incsearch
nnoremap <Leader>w /\s\+$<Enter>
nnoremap <Leader>W :%s/\s\+$//g<Enter>

"""" windows """""
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

"""" cscope """"
set cscoperelative

"""" netrw """"
let g:netrw_browse_split=4
let g:netrw_winsize=20

"""" Fkeys """"
map <F1> <Esc>:NERDTreeToggle<Enter>

"""" syntax """"
syntax on
set t_Co=256
set background=light
colorscheme PaperColor
hi cConstant        cterm=NONE ctermfg=Black
hi cIdentifier      cterm=NONE ctermfg=Black
hi cFunction        cterm=NONE ctermfg=Black
hi cStatement       cterm=NONE ctermfg=Black
hi cPreProc         cterm=NONE ctermfg=Black
hi cType	        cterm=NONE ctermfg=Black
hi cSpecial         cterm=NONE ctermfg=Black
hi cDelimiter       cterm=NONE ctermfg=Black
hi cRepeat          cterm=NONE ctermfg=Black
hi cNumber          cterm=NONE ctermfg=Black
hi cStorageClass    cterm=NONE ctermfg=Black
hi cIncluded        cterm=NONE ctermfg=Black
hi cStructure       cterm=NONE ctermfg=Black



