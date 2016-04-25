set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'bronson/vim-trailing-whitespace'

Plugin 'tomasr/molokai'

Plugin 'easymotion/vim-easymotion'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'tpope/vim-fugitive'

Plugin 'Yggdroot/indentLine'

Plugin 'terryma/vim-multiple-cursors'

Plugin 'jiangmiao/auto-pairs'

Plugin 'Valloric/YouCompleteMe'

Plugin 'terryma/vim-smooth-scroll'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on

let mapleader=" "

set wildmenu
set backupdir=~/tmp,.,/var/tmp/vi.recover,/tmp
set directory=~/tmp,/var/tmp/vi.recover,/tmp,.
set nobackup
" set textwidth=78
" set shiftwidth=4
set bs=2		" allow backspacing over everything in insert mode
"set ai			" always set autoindenting on
set viminfo='20,\"50	" read/write a .viminfo file, don't store more
set hlsearch
set showmatch
set ts=4
set sw=4
set sts=4
set cindent
set fileencoding=utf8
set fileencodings=uft8,big5,gbk,ucs-bom,gb18030,sjis,latin1
set encoding=utf-8
set smarttab
set t_Co=256
set nu
set rnu
set cursorline
set laststatus=2
set mouse=a
"set showtabline=2
"set list
"set lcs=tab:\|\
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 1

let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

map s <Plug>(easymotion-s)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

nmap <S-Left> gT
nmap <S-Right> gt

if &filetype == 'py'
	set et
endif

"set background=dark	" another is 'light'
