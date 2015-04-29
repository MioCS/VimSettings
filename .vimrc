set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-powerline' 
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/a.vim' 
Plugin 'scrooloose/nerdcommenter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
Plugin 'Tagbar'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

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

" common set
" define <leader>
let mapleader=";"
" display row number
set nu
" display status line
set laststatus=2
" display cursor
set ruler
" helight current row/column
set cursorline
set cursorcolumn
" helight search result
set hlsearch
" indent settinga
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
" makefile
nmap <F5> :wa<CR>:make<CR><CR>:cw<CR>

" colorscheme
set background=light
colorscheme molokai

" vim-powerline plugin
set t_Co=256
set encoding=utf8
let g:Powerline_symbols = 'fancy'

" a.vim plugin
" switch between *.cpp & *.h
nmap <Leader>h :A<CR>
" display in subWindows
nmap <Leader>sh :AS<CR>

" YCM settings 
" completion in comments
let g:ycm_complete_in_comments=1
" allow vim load .ycm_extra_conf.py
let g:ycm_confirm_extra_conf=0
" start ycm tags completion engine
let g:ycm_collect_identifiers_from_tags_files=1
" add c++ stdlib tags
set tags+=~/VimSettings/stdcpp.tags
" OmniCppComplete
inoremap <leader>; <C-x><C-o>
" using list instead subWindows
set completeopt-=preview
" show completion list from first key words 
let g:ycm_min_num_of_chars_for_completion=1
" forbid cache match, always rebuilding
let g:ycm_cache_omnifunc=0
" syntax completion         
let g:ycm_seed_identifiers_with_syntax=1

" NERDTree settings
" Toggle NERDTree 
nmap <F2> :NERDTreeToggle<CR>
" set NERDTree subWindows width
let NERDTreeWinSize=32
" set NERDTree subWindows position
let NERDTreeWinPos="left"
" display hidden files
let NERDTreeShowHidden=1
" no help in subWindows
let NERDTreeMinimalUI=1
" delete file and corresponding buffer
let NERDTreeAutoDeleteBuffer=1
