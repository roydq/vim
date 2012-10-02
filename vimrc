" Gotta do these things
set nocompatible
filetype plugin indent on
syntax on
set hidden

" Install pathogen
call pathogen#infect()

" Use a competent leader
let mapleader=","

" Set quickbuf hotkey
let g:qb_hotkey="<Tab>"

" For switching between splits
nnoremap <Up> <C-w><Up>
nnoremap <Down> <C-w><Down>
nnoremap <Left> <C-w><Left>
nnoremap <Right> <C-w><Right>

" Switch between buffers ez
nnoremap <C-Right> :bn<CR>
nnoremap <C-Left> :bp<CR>

" Close buffers the right way
nnoremap <Leader>q<CR> :Bclose<CR>
nnoremap <Leader>q!<CR> :Bclose!<CR>

" Toggle folds with space
nnoremap <space> za

" Type jj to get out of insert mode!
inoremap jj <Esc>

" NERDTree stuff
nnoremap <Leader>ntb :NERDTreeFromBookmark
nnoremap <S-Tab> :NERDTreeToggle<CR>

" Edit vimrc ,ev
nnoremap <Leader>ev<CR> :e $MYVIMRC<CR>

" Random stuff so vim behaves like a modern app
set novisualbell
set noerrorbells
set backspace=indent,eol,start
set nowrap
set clipboard+=unnamed
set mouse=a

" Folding
set foldmethod=syntax
set foldlevelstart=99

" Visual
set ruler
set laststatus=2
set showcmd
set showmatch
set number
set background=dark
colorscheme ir_black
" font settings
if has("mac")
	set guifont=Monaco:h14
  set noantialias
elseif has("unix")
	set guifont="Monospace 12"
else 
	set guifont=DejaVu_Sans_Mono:h14:cANSI
endif
set t_Co=256
" Hide toolbar and menu in gvim
set guioptions-=T
set guioptions+=m

" Tabs
set autoindent
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab

" Search Options 
set incsearch
set hlsearch

" Tmp/Backups
set backup
if has('win32')
	set backupdir=$VIM/vimfiles/backup
	set directory=$VIM/vimfiles/tmp
else
	set backupdir=$HOME/.vim/backup
	set directory=$HOME/.vim/tmp
end

" Auto change to current file's directory
if exists('+autochdir')
  set autochdir
else
  autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /
endif
