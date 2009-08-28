" Gotta do these things
set nocompatible
filetype plugin indent on
syntax on

" Buffer tabs stuff
let g:buftabs_in_statusline=1
let g:buftabs_only_basename=1
noremap <C-left> :bprev<CR>
noremap <C-right> :bnext<CR>

" Random Stuff
set novisualbell
set noerrorbells
set backspace=indent,eol,start
set nowrap
set clipboard+=unnamed
set mouse=a

" Visual
set ruler
set laststatus=2
set showcmd
set showmatch
colorscheme vividchalk

" Tabs
set autoindent
set softtabstop=2
set shiftwidth=2

" Search Options 
set incsearch
set hlsearch
set ignorecase

" Tmp/Backups
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
