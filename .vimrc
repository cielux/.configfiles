set tabstop=4 shiftwidth=4 expandtab
set autoindent smartindent

set nu
set nocp

syntax on

set wildmode=list:longest,full
set wildmenu

filetype plugin indent on

au BufRead,BufNewFile *.md set filetype=markdown
