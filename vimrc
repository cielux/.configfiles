" Turn off compatibility mode
set nocompatible

" Autoload vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" vim-plug start
call plug#begin('~/.vim/plugged')

" vim-plug addons
Plug 'joshdick/onedark.vim'

" vim-plug end
call plug#end()

" Stop filetype from overriding tab settings
filetype indent off

" Make backspace work normally on older machines
set backspace=indent,eol,start

" Tabbing
set tabstop=2 shiftwidth=2 expandtab
set autoindent smartindent

" Searching
" Case insensitive search
set ignorecase
" Case sensitive search when an uppercase letter is present
set smartcase

" Appearance
set nu
syntax on

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux'    s 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a8    95bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427    b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

colorscheme onedark

" Menu options
set wildmode=list:longest,full
set wildmenu

" Filetypes
augroup filetypes
  autocmd!
  " Set .md to be treated as markdown files
  autocmd BufRead,BufNewFile *.md set filetype=markdown
  " Set Salesforce class and trigger files to be treated as java files
  autocmd BufRead,BufNewFile *.cls,*.trigger set filetype=java
  " Set .mustache and .hbs (Handlebars) files to be treated as HTML files
  autocmd BufRead,BufNewFile *.hbs,*.mustache set filetype=html
augroup END

" Put swap and backup files in the .vim directory
set directory=$HOME/.vim/swap//
set backupdir=$HOME/.vim/backup//

