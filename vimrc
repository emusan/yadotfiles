" Plugins used: snipMate, nerdTree, rails, html5(adds proper formatting for 
" older html as well), fugitive, (and probably more soon)
"
" This particular vimrc is made by Tom McLeod, though pretty much everything
" here is borrowed from others configs.
"
" I plan on working on this a lot over time.

" why be backwards compatable(aka if I wanna vi I'll vi)???
set nocompatible

" VUNDLE!
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#begin()

" let Vundle manage Vundle!
Plugin 'gmarik/vundle'

" My Bundles:
" Non-Githubs:
Plugin 'octave.vim'
Plugin 'VHDL-indent'
Plugin 'Smart-Tabs'
Plugin 'verilog_systemverilog.vim'
Plugin 'Align.vim'
" Githubs:
Plugin 'tpope/vim-fugitive'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'emusan/mirodark'
"Bundle 'tpope/vim-rails'
"Bundle 'AndrewRadev/switch.vim'

"call vundle#config#require(g:bundles)
call vundle#end()

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Get that filetype stuff happening
filetype on
filetype plugin on
filetype indent on

" Allows for 256 color mode, required by some colorschemes
set t_Co=256

" My personal favorite colorscheme as of now, it can be found at
" (https://github.com/gregsexton/Muon)
" mine is slitghtly modified, I may fork it on github.
colorscheme mirodark

" 2 space tabstop, because I'm a nut :D
set tabstop=4
set shiftwidth=4

" who likes wrapped text anyway???
set nowrap

" I set my virtual edit to one more... why? I really can't say
set ve=onemore

" Syntax highlighting/indenting and stuffs
set ai
syntax enable
set si

" lol should be default on
set hidden

" Don't update display while executing macro's(and therefore wasting the precious cpu's!!!)
set lazyredraw

" Tell me which mode
set showmode

" Make vertical splits pretty :D
set fillchars=vert:¦  " That is a vertical box-drawing character(UNICODE)

" Set my leader to , instead of default \, which sucks :P
let mapleader = ","

" ,gs pulls up git status(using fugitive.vim)
nnoremap <leader>gs :Gstatus<CR><C-W>15+

" ,w saves(faster, and I like to save!
nnoremap <leader>w :w<CR>

" ,l changes whether hidden characters can be viewed
nmap <leader>l :set list!<CR>

" Make < indent back and then re-highlight
vnoremap < <gv
" Same for >
vnoremap > >gv

" Faster moving from one window to another!
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Sets a key to the switch command from Switch.vim, I'm still working on using 
" this plugin well, but once I do I'm sure it'll help a ton with everything :D
map - :Switch<CR>

" Sets a number of lines from the top and bottom that will be used as a kind
" of visual buffer while scrolling, I find it less visually jarring than
" having the cursor at the bottom of the page...
set scrolloff=3

" Just kind of trying this out to see if I like it, while typing a search
" query(for example with /), it will move the cursor to search terms while
" typing, I like it so far
set incsearch

" Max columns to render syntax hylighting, no sense wasting CPU time on stuff
" that far off, it's doubtful I'd ever read it anyway. Though I've never come
" across anything like this yet, it can't hurt.
set synmaxcol=2048

set guioptions=none

set guifont=ProggyTinyTTSZ:h12:cANSI

" Didn't need this before, but now in windows I do for some reason
set backspace=2

" Want relative number with the current line number as well, allows for easier
" use of motions while also getting an idea of where in the file you are.
set number
set relativenumber
