set nocompatible        " be Improved, required
filetype off            " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pas a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')


" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands berwwen vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html 
" Plugin 'L9'
" Git plugin not hosted on Github
Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e when working on you own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you're already install a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newl9'}

" Utility
Plugin 'scrooloose/nerdtree'
Plugin 'qpkorr/vim-bufkill'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'

" Git Setting
Plugin 'airblade/vim-gitgutter'

" Theme | Template
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'acoustichero/goldenrod.vim'

" All of you Plugins must be added before the following line
call vundle#end()           " required
filetype plugin indent on   " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append '!' to update of just :PluginUPdate
" :PluginSearch     - seraches for foo; append '!' to refresh lochacache
" :PluginClean      - confirms removal of unused plugins; append '!' to
" auto-approve removal

" set :h vundle fo rmore details or wiki for FAQ
" Put your non-Plugin stuff after this line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configurration Section
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Show linenubers
set number
set ruler

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Always display the status line 
set laststatus=2

" Enalbe Elite mode, NO ARROOWS!!!
" let g:elite_mode=1

" enable highlighting of the current line
set cursorline

" Pathogen to syntastic
execute pathogen#infect('bundle/{}', '~/src/vim/bundle/{}')
syntax on
filetype plugin indent on

" Theme and Styling
set t_Co=256
set background=dark
colorsheme solarized

if has('gui_running')
    set background=light
else
    set background=dark
endif

if (has("termguicolors"))
    set termguicolors
endif

let base16colorspace=256 " Acccess colors present on 256 colorspace

" Shortcut

let mapleader = ","

nmap <Leader>c :tabedit $MYVIMRC<cr>

nmap <Leader>f :bn<cr>
nmap <Leader>d :bp<cr>

nmap <Leader><space> :nohsearch<cr>

" Shortcut window change
nmap <C-h> <C-w><C-h>
nmap <C-j> <C-w><C-j>
nmap <C-k> <C-w><C-k>
nmap <C-l> <C-w><C-l>

nmap <S-Enter> O<Esc>j
nmap <CR> o<Esc>k

" Shortcut NERDTree
nmap <Leader>t :NERDTreeToggle<cr>
nmap <Leader>n :NERDTreeFind<cr>

" CTags
nmap <Leader>g <C-]>

" Vim-airline Setting
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" Ag and greplace
set grepprg=ag
let g:grep_cmd_opts= '--line-numbers --noheading'

" Solarized colorscheme
if !has('gui_running')
    let g:solarized_termcolors=256
endif
hi Visual ctermbg=105
hi MatchParen cterm=bold ctermbg=125 ctermfg=0
hi Normal ctermfg=256

" Setting vim-devicons
let g:airline_powerline_fonts =1

" Powerline
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim
