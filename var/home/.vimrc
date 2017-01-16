set encoding=utf-8
scriptencoding utf-8

"
" 1 important
"

"
" 2 moving around, searching and patterns
"
set whichwrap=b,s,h,l,<,>,[,],~ " liset of flags specifying which commands wrap to another line
set wrapscan " search commands wrap around the end of the buffer
set incsearch " show match for partly typed search command
set ignorecase " ignore case when using a search pattern
set smartcase " override 'ignorecase" when pattern has upper case characters

"
" 3 tags
"

"
" 4 displaying text
"
set number " show the line number for each line

"
" 5 syntax, highlighting and spelling
"
syntax enable
set background=light " "dark" or "light"; the background color brightness
set hlsearch " highlight all matches for the last used search pattern
" set termguicolors " use GUI colors for the terminal
" set cursorcolumn " highlight the screen column of the cursor
set cursorline " highlight the screen line of the cursor
" set spell " highlight spelling mistakes

"
" 6 multiple windows
"
set laststatus=2 " 0, 1 or 2; when to use a status line for the last window
"set statusline= " alternate format to be used for a status line

"
" 7 multiple tab pages
"

"
" 8 terminal
"
" set title " show info in the window title
" set icon " set the text of the icon for this window

"
" 9 using the mouse
"
" set mouse=a " list of flags for using the mouse
set mousefocus " the window with the mouse pointer becomes the current one

"
" 10 GUI
"
set guifont="Ricty Diminished Regular for Powerline"
" set transparency=50 " transparency of the text background as a percent

"
" 11 printing
"

"
" 12 messages and info
"
set showcmd " show (partial) command keys in the status line
set showmode " diplay the current mode in the status line
set ruler " show cursor position below eanch window
" set rulerformat= " alternate format to be used for the ruler
set visualbell " use a visual bell instead of beeping

"
" 13 selecting text
"
set selectmode=mouse,key " "mouse", "key", and/or "cmd"; when to start Select mode instead of Visual mode
set clipboard=unnamed " "unnamed" to use the * register like unnamed register, "autoselect" to always put selected text on the clipboard

"
" 14 editing text
"
set backspace=indent,eol,start " specifies what <BS>, CTRL-W, etc. can do in Insert mode
set showmatch " when inserting a bracket, briefly jump to its match

"
" 15 tabs and indenting
"
set tabstop=4 " number of spaces a <Tab> in the text stands for
set shiftwidth=4 " number of spaces used for each step of (auto)indent
set smarttab " a <Tab> in an indent inserts 'shiftwidth' spaces
set softtabstop=4 " if non-zero, number of spaces to insert for a <Tab>
set expandtab " expand <Tab> to spaces in Insert mode
set autoindent " automatically set the indent of a new line
set smartindent " do clever autoindenting

"
" 16 folding
"
"
" 17 diff mode
"
"
" 18 mapping
"
"
" 19 reading and writing files
"
set nobackup " keep a backup after overwriting a file

"
" 20 the swap file
"
"
" 21 command line editing
"
set history=100 " how many command lines are remembered
set wildmenu " command-line completion shows a list of matches
"
" 22 executing external commands
"

"
" 23 running make and jumping to errors
"

"
" 24 language specific
"

"
" 25 multi-byte characters
"
set fileencodings=ucs-bom,utf-8,cp932,euc-jp

"
" 26 variousmerting text
"
set virtualedit=onemore " when to use virtual editing: "block", "insert" and/or "all"

"
" Mapping
"
nnoremap <Esc><Esc> :<C-u>set nohlsearch!<CR>

"
" Plugins
"
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'editorconfig/editorconfig-vim'
Plug 'vim-scripts/fish-syntax'
call plug#end()

" vim-airline
let g:airline_powerline_fonts = 1
