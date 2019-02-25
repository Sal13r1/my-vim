set nocompatible              " be iMproved, required
filetype off                  " required <<========== We can turn it on later

"USE THIS COMMAND to download VUNDLE
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" <============================================>
" Specify the plugins you want to install here.

Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'junegunn/fzf'
Plugin 'tpope/vim-eunuch'
Plugin 'w0rp/ale'
Plugin 'airblade/vim-gitgutter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'bling/vim-airline'
Plugin 'valloric/youcompleteme'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tmhedberg/simpylfold'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'
Plugin 'cocopon/iceberg.vim'
Plugin 'christophermca/meta5'
Plugin 'tyrannicaltoucan/vim-deep-space'
Plugin 'danilo-augusto/vim-afterglow'
Plugin 'jnurmine/zenburn'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'godlygeek/tabular'
Plugin 'ervandew/supertab'
Plugin 'Shougo/denite.nvim'
Plugin 'tomasr/molokai'
Plugin 'justinmk/vim-syntax-extra'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

" <============================================>
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
" Put the rest of your .vimrc file here

"Colors!
"syntax enable allows pretty colors
syntax enable

"No real clue what this does, I assume it allows colors of some sort
set termguicolors
"$TERM=xterm-256color
"t_Co=256
"
"This sets the background to be dark
set background=dark

"These are your pre-made color pallettes, comment them out and select one to
"use.
"colorscheme iceberg
"colorscheme meta5
"colorscheme deep-space
"colorscheme afterglow
"colorscheme zenburn
colorscheme molokai
"colorscheme solarized

"Airline Theme Control
"let g:airline_theme='deep_space'
"let g:airline_theme='iceberg'
"let g:airline_theme='meta5'
"let g:airline_theme='afterglow'
"let g:airline_themes='zenburn'
"let g:airline_theme='solarized'
let g:airline_theme='molokai'

"END of colors!


"Configuration Stuff
set tabstop=4 "Number of visual spaces per TAB
set softtabstop=4 "Number of spaces in tab when editting
set expandtab "tabs are spacebar presses
set number "This shows the numbers on the lines
set showcmd "This shows the last command used in the bottom bar. Might not be needed
set cursorline "Highlight current line

filetype indent on "load filetype-specific indent files. Look into indent files?
set wildmenu "Visual autocomplete for command menu
set lazyredraw "redraw only when needed
set showmatch "This highlights matching symbols

set incsearch "searches as you type!!! amazing!!!
set hlsearch "Highlights searches!

"Don't know how this works exactly, try it til you understand
nnoremap <leader><space> :nohlsearch<CR>

"Folding
set foldenable "enables folds
set foldlevelstart=10 "opens most folds by default
set foldnestmax=10 "10 nested fold max
"This opens and closes folds with space
nnoremap <space> za 
set foldmethod=indent "fold based on indent level


"Button Mapping for commands
nmap <F8> :TagbarToggle<CR>


