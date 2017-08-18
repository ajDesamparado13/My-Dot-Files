if has('vim_starting')
	set nocompatible	"Be IMproved
endif
"**********************************
"Basic Setup
"**********************************
set tags=./tags;/
"Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary
set history=1000
set shortmess=aAIsT
set wildmenu
set scrolloff=3
set laststatus=2
" Fix backspace indent
set backspace=indent,eol,start

" Tabs. May be overwritten by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set foldcolumn=1
set textwidth=120
"set colorcolumn=+1

set mouse=a
set vb
" Map ledaer to ,
let mapleader=','

"Enable hidden buffers
set hidden
set diffopt+=iwhite

" Searching
set hlsearch
set incsearch
set smartcase
set ignorecase!


"Directories for swap fles
set nobackup
set noswapfile


set fileformats=unix,dos,mac
set showcmd

if exists('$SHELL')
	set shell=$SHELL
else
	set shell=/bin/sh
endif

"**********************************
"  Visual Setting
"**********************************
syntax on
set ruler
set relativenumber
set number
set list
"set fillchars=vert:¦
set listchars=tab:› ,trail:-,extends:>,precedes:<,eol:¬
set cursorline
set nowrap
set linespace=0

"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite


set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif

let g:CSApprox_loaded = 1
" IndentLine
let g:indentLine_enabled = 1
let g:indentLine_concealcursor = 0
let g:indentLine_char = '┆'
let g:indentLine_faster = 1

let g:indent_guides_auto_colors = 0
let g:indent_guides_color_change_percent = 10
let g:session_autosave='no'

let g:indent_guides_space_guides = 1
let g:indent_guides_guide_size = 1
"
let g:gitgutter_sign_modified = '≈ '
let g:gitgutter_sign_removed = '⌐ '

let g:vue_disable_pre_processors=1

let g:multi_cursor_exit_from_visual_mode=0
let g:multi_cursor_exit_from_insert_mode=0

let g:gutentags_enabled=1
