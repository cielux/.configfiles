" run 'git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim' before using Vundle
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
Plugin 'scrooloose/syntastic'
Plugin 'tomasr/molokai'
Plugin 'Rip-Rip/clang_complete'

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

" Syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Personal Syntastic settings
let g:syntastic_cpp_check_header = 1

" clang_complete settings
let g:clang_library_path = "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib"

" Tabbing
set tabstop=4 shiftwidth=4 expandtab
set autoindent smartindent

" Appearance
set nu
syntax on
colorscheme molokai

" Menu options
set wildmode=list:longest,full
set wildmenu

" Mappings
inoremap <expr> <C-@> pumvisible() ? "\<C-n>" : "\<C-x><C-o>"
autocmd CompleteDone * :pclose

" Filetypes
au BufRead,BufNewFile *.md set filetype=markdown
