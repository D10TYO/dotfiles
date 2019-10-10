"dein Scripts-----------------------------
if &compatible
  set nocompatible " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')
  call dein#add('altercation/vim-colors-solarized')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

"Base
set number
set encoding=utf-8
set noswapfile autowrite nobackup nowritebackup
set wrap

"Syntax
syntax enable
colorscheme solarized
set background=dark

"Tabs
set expandtab
set tabstop=2
set smartindent
set shiftwidth=2

"Status line
set laststatus=2
set statusline=[%n]\ %F\ %y%h%w%m%r%=0x%B(%b)\ %c%V\ %l/%L

"Meta char
set list
set listchars=tab:»-,trail:_,extends:»,precedes:«,nbsp:%

"Search
set hlsearch
set incsearch
set ignorecase
set smartcase
set wrapscan

"Zenkaku highlight
function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction
augroup ZenkakuSpace
  autocmd!
  autocmd ColorScheme       * call ZenkakuSpace()
  autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
augroup END
call ZenkakuSpace()
