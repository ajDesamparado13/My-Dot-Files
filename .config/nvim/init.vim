let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')


if !filereadable(vimplug_exists)
	if !executable("curl")
		execute "q!"
	endif
	silent !\curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	let g:not_finish_vimplug ="yes"
	autocmd VimEnter * PlugInstall
endif

" Required:
call plug#begin(expand('~/.config/nvim/plugged'))

"**********************************
" Interfaces Plugins
"**********************************
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'


"**********************************
" Git Integration Plugins
"**********************************
Plug 'tpope/vim-fugitive'

"**********************************
"  Command Plugins
"**********************************
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

if v:version >= 703
  Plug 'Shougo/vimshell.vim'
endif

"**********************************
"  Code Completion Plugins
"**********************************
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tmhedberg/matchit'
Plug 'Raimondi/delimitMate'
Plug 'SirVer/ultisnips'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'ternjs/tern_for_vim', {'do': 'npm install'}
Plug 'ludovicchabant/vim-gutentags'
"**********************************
"  Code Display Plugins
"**********************************
Plug 'sheerun/vim-polyglot'
Plug 'skammer/vim-css-color'
"Plug 'posva/vim-vue'
"Plug 'othree/html5.vim'

"**********************************
"  Other Plugins
"**********************************
Plug 'tpope/vim-commentary'
Plug 'scrooloose/syntastic'
Plug 'Yggdroot/indentLine'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/grep.vim'
Plug 'vim-scripts/CSApprox'



"**********************************
" Vim Libraries 
"**********************************
if isdirectory('/usr/local/opt/fzf')
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
else
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'
endif
let g:make = 'gmake'
if exists('make')
        let g:make = 'make'
endif
Plug 'Shougo/vimproc.vim', {'do': g:make}

call plug#end()
filetype plugin indent on
" <=======END OF Plugins======>


"" NERDTree configuration
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 50
let NERDDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeHijackNetrw=1

" vim-airline
set guifont=Inconsolata\ for\ Powerline
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts=1
let g:Powerline_symbols = 'fancy'


if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.linenr = '␊'
  let g:airline_symbols.linenr = '␤'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.whitespace = 'Ξ'


let no_buffers_menu=1


" Syntax-specific settings
"source ~/.vim/startup/js.vim
"source ~/.vim/startup/php.vim
"source ~/.vim/startup/vim.vim
"source ~/.vim/startup/yaml.vim
"source ~/.vim/startup/html.vim
"



let g:deoplete#enable_at_startup =1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
" let g:deoplete#disable_auto_complete = 1
" SCRIPT CONFIGS
" Load custom settings
source ~/.config/nvim/autoload/settings.vim
source ~/.config/nvim/autoload/commands.vim
source ~/.config/nvim/autoload/color.vim
source ~/.config/nvim/autoload/functions.vim
source ~/.config/nvim/autoload/mappings.vim
source ~/.config/nvim/autoload/git.vim

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
