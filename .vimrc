syntax on
set incsearch
set hlsearch
set number
set expandtab
set shiftwidth=2
set tabstop=2
set mouse=a

filetype plugin indent on

auto Filetype php setlocal shiftwidth=4 tabstop=4

" Shortcut

let mapleader = ","

nmap <Leader>c :tabedit $MYVIMRC<cr>

nmap <Leader>f :bn<cr>
nmap <Leader>d :bp<cr>

nmap <Leader><space> :nohlsearch<cr>

" Shortcut Window Change
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

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself.
Plugin 'VundleVim/Vundle.vim'

" Plugin
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'mattn/emmet-vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'fatih/vim-go', { 'do': ':GoInstallBinaries'}
Plugin 'robertbasic/vim-hugo-helper'

call vundle#end()

" Vim-airline Setting
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
set laststatus=2
let g:airline_theme = 'molokai'

" Ag and greplace
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

" Pathogen to syntastic
execute pathogen#infect()

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal support 256 colours)
set t_Co=256

" Solarized colorscheme
if !has('gui_running')
    let g:solarized_termcolors=256
endif
set background=dark
hi Visual ctermbg=105
hi MatchParen cterm=bold ctermbg=125 ctermfg=0
hi Normal ctermfg=253

" setting vim-devicons
let g:airline_powerline_fonts = 1

" Setting HugoHelper
let g:hugohelper_spell_check_lang = 'en_us'
