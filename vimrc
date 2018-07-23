" Enable modern vim mode
set nocompatible
filetype plugin indent on
syntax on
set hidden

" Random stuff so vim behaves like a modern app
set noeb vb t_vb=
set novisualbell
set noerrorbells
set backspace=indent,eol,start
set nowrap
set clipboard+=unnamed

" Activate pathogen
call pathogen#infect()
call pathogen#helptags()
" Tim Pope said to do this if you use pathogen
set sessionoptions-=options

" --- begin plugin settings

" NERDTree stuff
nnoremap <Leader>ntb :NERDTreeFromBookmark
nnoremap <S-Tab> :NERDTreeToggle<CR>

" CtrlP fuzzy file finder
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_switch_buffer = 'E'
nmap <Leader>f :CtrlPClearCache<CR>

" Tab to list buffers using CtrlP
nnoremap <Tab> :CtrlPBuffer<CR>

" Silver searcher instead of ack - for use with Ack.vim
if executable('ag')
  let g:ackprg = 'ag --nogroup --nocolor --column'
endif

" Rubytest bindings
map <Leader>[ <Plug>RubyTestRun
map <Leader>] <Plug>RubyFileRun
map <Leader>/ <Plug>RubyTestRunLast

" --- end plugin settings

" Use a competent leader
let mapleader=","

" Balloons are the worst
if has("gui_running")
  set noballooneval
end

" Set encoding to utf-8
if &encoding ==# 'latin1' && has('gui_running')
  set encoding=utf-8
endif

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

" Type jj to get out of insert mode
inoremap jj <Esc>

" Edit vimrc ,ev
nnoremap <Leader>ev<CR> :e $MYVIMRC<CR>

" Clear trailing whitespace
nnoremap <Leader>cw :%s/\s\+$//<CR>

" cd to current file's dir
nnoremap <Leader>cd :cd %:p:h<CR>

" Disable mouse
set mouse=

" Folding
set foldmethod=indent
set foldlevelstart=99

" Visual
set ruler
set laststatus=2
set showcmd
set showmatch
set number

" Color scheme
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

" Show lines that don't fit, instead of @
set display+=lastline

" Tabs
set autoindent
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab

" Search Options
set incsearch
set hlsearch

" Always global replace
set gdefault

" Auto-reload file if changed externally
set autoread

" Allow cursor to go to end of line
" set virtualedit+=onemore

" flip the default split directions to sane ones
set splitright
set splitbelow

" highlight trailing whitespace
set listchars=tab:»·,trail:-,extends:>,precedes:<,nbsp:+
set list

" Make history big
set history=10000

" Completion list for filename stuff?
set wildmenu

" Tmp/Backups
set backup
if has('win32')
  set backupdir=$VIM/vimfiles/backup
  set directory=$VIM/vimfiles/tmp
else
  set backupdir=$HOME/.vim/backup
  set directory=$HOME/.vim/tmp
end

" Only complete using current file and included files
set complete-=i

" Set timeout on all keycodes
set ttimeout
set ttimeoutlen=100

" Dunno, something to do with viminfo...
if !empty(&viminfo)
  set viminfo^=!
endif

" Paste from 0 buffer, since yanks always go to 0.
" Prevents annoying problem of paste always using the " register
noremap <Leader>p "0p
noremap <Leader>P "0P
vnoremap <Leader>p "0p
