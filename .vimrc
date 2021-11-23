" Version 2018-11-10

if has("syntax")
  syntax on
endif

" Use vim settings instead of being limited to the 
" old and busted settings of legacy vi
set nocompatible

" Don't highlight matches on search terms until I hit enter
set noincsearch

" Turn on the verboseness to see everything vim is doing.
" set verbose=9

" Don't wake up system with blinking cursor:
" http://www.linuxpowertop.org/known.php
let &guicursor = &guicursor . ",a:blinkon0"

" Normal searches are case insensitive
set ignorecase

" Case sensitive searches when uppercase letters are used in search pattern
set smartcase

" Creates a status line that includes the filename
set laststatus=2

" Configure status line to show the filename, the file type, 
" and the location of the cursor in the file
set statusline=%<%F\ %h%m%r%y%=%-14.(%l:%L,\ %c%)\ %P

" Chose setting that matches your terminal background (light or dark)
" set background=light
set background=dark

" Don't automatically insert a # at the beginning of a new line when 
" the previous line contained one (disable auto-comment mode)
au FileType * setl fo-=cro

" Use 3 space tabs instead of 8 space tabs
set tabstop=3

" Use 3 spaces when text is indented
set shiftwidth=3

" Use space characters whenever the tab key is pressed
" set expandtab

" 256 color mode
set t_Co=256

" Increase the size of the register used to save yanks between files
set viminfo='1000,<1000,s10,h

" Be smart when using tabs ;)
set smarttab

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Create a color bar at column 80 to form a soft margin
set colorcolumn=80

" Increase the size of the register used to save yanks between files
set viminfo='1000,<1000,s10,h

"if has("autocmd")
"  au BufReadPost *.rkt,*.rktl set filetype=scheme
"  au filetype scheme set lisp
"  au filetype scheme set autoindent
"endif

"if has("autocmd")                                                               
"    au BufReadPost *.rkt,*.rktl set filetype=scheme                             
"endif 

" Disable the mouse so it doesn't fight with terminal highlighting
if has("autocmd")
   au BufEnter * set mouse=
endif

" Make yml files work right                                                     
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab 

" Stop doing automatic comments
" au FileType * setlocal formatoptions-=tcro

" Denote indentations
let g:indentLine_char = '|'

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set modeline
set modelines=2
