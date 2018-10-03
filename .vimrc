set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-endwise'
"Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-bundler'
Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'ctrlp'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'garbas/vim-snipmate'
Plugin 'chrisbra/NrrwRgn'
Plugin 'elzr/vim-json'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'vim-airline/vim-airline'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'flazz/vim-colorschemes'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ktonga/vim-follow-my-lead'
Plugin 'easymotion/vim-easymotion'
Plugin 'Drawit'
Plugin 'autoclose'
Plugin 'wesQ3/vim-windowswap'
Plugin 'itchyny/calendar.vim'
Plugin 'vim-scripts/Txtfmt-The-Vim-Highlighter'

" Calendar
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

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

" ------------------------------------------------------------------------------------

" fix terminal not showing block cursor char
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

colorscheme inkpot

let mapleader="\\"
nmap <leader>n :NERDTreeToggle<cr>
"nmap <leader>/ :NERDComToggleComment<cr>
let NERDTreeShowHidden=1

set number
set relativenumber
set expandtab
set shiftwidth=2
set tabstop=4
set softtabstop=4
set hlsearch
set ic
set cursorline " highlight current line
filetype indent on " load filetype-specific indent files
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=indent   " fold based on indent level
" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

let g:ctrlp_custom_ignore = 'node_modules'
let NERDTreeIgnore = ['node_modules']

set backupdir=~/.vim/backup//
set directory=~/.vim/swp//
set viewdir=~/.vim/view//

augroup remember_folds
  autocmd!
  autocmd BufWinLeave *z_mind mkview
  autocmd BufWinEnter *z_mind loadview
  autocmd BufWinEnter *z_mind set foldmethod=manual
augroup END
hi Normal guibg=NONE ctermbg=NONE

