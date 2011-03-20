filetype off
call pathogen#runtime_append_all_bundles() 
call pathogen#helptags()

set nocompatible
set cpo&vim
syntax on
filetype on
map! <xHome> <Home>
map! <xEnd> <End>
map! <S-xF4> <S-F4>
map! <S-xF3> <S-F3>
map! <S-xF2> <S-F2>
map! <S-xF1> <S-F1>
map! <xF4> <F4>
map! <xF3> <F3>
map! <xF2> <F2>
map! <xF1> <F1>
nmap ,hx wbF<df>f<df>
nmap ,ht wbi<tt>ea</tt>bb
nmap ,hs wbi<strong>ea</strong>bb
nmap ,hu wbi<u>ea</i>bb
nmap ,hi wbi<i>ea</i>bb
nmap ,he wbi<em>ea</em>bb
nmap ,hb wbi<b>ea</b>bb
nmap ,h6 _i<h6>A</h6>
nmap ,h5 _i<h5>A</h5>
nmap ,h4 _i<h4>A</h4>
nmap ,h3 _i<h3>A</h3>
nmap ,h2 _i<h2>A</h2>
nmap ,h1 _i<h1>A</h1>
nmap ,mh wbgueyei<ea></pa>bba
map Q gq
map <xHome> <Home>
map <xEnd> <End>
map <S-xF4> <S-F4>
map <S-xF3> <S-F3>
map <S-xF2> <S-F2>
map <S-xF1> <S-F1>
map <xF4> <F4>
map <xF3> <F3>
map <xF2> <F2>
map <xF1> <F1>

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
set autoindent
set background=dark
set backspace=2
set hlsearch
set ignorecase
set ruler
set smartcase
set nobackup
set wrap linebreak textwidth=0

hi Comment ctermfg=yellow

filetype plugin indent on

if has("gui_running")
    set background=dark
    colorscheme torte
    set guifont=Monospace\ 12
endif

let mapleader=","

" maps jj as esc
ino jj <esc>
cno jj <c-c>

"setup the nerdtree file browser plugin
let NERDTreeIgnore = ['\.pyc$', '\.pyo']
map <leader>a :NERDTree<CR>

" ,b to open the list of open buffers
nmap <silent> <leader>b :LustyJuggler<CR>

" tcomment comment out blocks of code
" gc and gcc to comment out blocks of code

" make nose the make prg for python files
"au BufRead *.py compiler nose
"au BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m

" ctrl-jklm  changes to that split
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Hints for other movements
" <c-w><c-r> rotate window to next spot
" <c-w><c-x> swap window with current one

" and lets make these all work in insert mode too ( <C-O> makes next cmd
" happen as if in command mode )
imap <C-W> <C-O><C-W>

" RopeVim
" http://rope.sourceforge.net/ropevim.html
" Refactoring engine using python-rope
"source /usr/local/ropevim.vim
"let ropevim_codeassist_maxfixes=10
"let ropevim_vim_completion=1
"let ropevim_guess_project=1
"let ropevim_enable_autoimport=1
"let ropevim_extended_complete=1

" Change the way the completion works
set wildmenu
set wildmode=longest,list
set wildignore+=*.pyc
