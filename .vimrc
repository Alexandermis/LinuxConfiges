set relativenumber      " Display line numbers relative to the current line
set ignorecase          " Ignore case when searching
set hlsearch            " Highlight search results
syntax on               " Enable syntax highlight
set smartcase           " Use case-sensitive search if a single capital letter is in the search
colorscheme desert

set smartindent         " Enable smart indentation
set autoindent          " Enable auto-indentation

set incsearch           " Show incremental search results
set showcmd             " Show the current command at the bottom right

set showmatch           " Highlight matching parentheses/braces
set history=2000        " Increase command-line history

set nobackup            " Don't create backup files
set nowritebackup       " Don't create backup files when writing
set noswapfile          " Disable swap files
set undofile            " Needed to use the u command
set undodir=$HOME/.vim/undo
set undolevels=1000     " Increase the amount of undoes

set mouse=a             " Enable mouse support in all modes

set spell               " Enable spell checking z= Spell checking menu ]s next misspelled word [s previous word
set spelllang=en        " Set the spellcheck language 

set cursorline
set scrolloff=4

set wildmenu            " Auto complete for the menu access it with TAB

set laststatus=2        " Improved status bar file"
set completeopt=menuone " Shows in the insert mode with CTRL the completion menu

set expandtab           " Convert the tab to spaces
set tabstop=4           " Set how many spaces is a tab
set shiftwidth=4        " Define amount of spaces with indents (> or < command)
set list                " Show hidden chars
set listchars=tab:»·,trail:·,extends:>,precedes:<,eol:$

vnoremap <C-c> "+y      " Copy to system clipboard with CTRL + c
map <C-v> "+P           " Paste from clipboars with CTRL + v

set wrap                " Warp text that extends beyond the screen length
set encoding=utf-8      " Set file encoding

if filereadable(expand("~/.vimrc.plug)"))
    source ~/.vimrc.plug
endif


" Hotkeys
" Netrw
"" :Ex                    Open netrw
"" u                      Navigate one folder higher in the netrw
"" t                      Open new tab
"" R                      Rename file
"" %filename              Create file
"" dDirectoryname         Crate directory


"" gg                     Go to the first line
"" G                      Go to last line
"" "ay                    Yank to register a
"" "+y                    Yank to system clipboard
"" A                      Go to the end of the line
"" d$                     Delete to the end of the line
"" ZZ                     Quit and save IF changes are made
"" ZQ                     Quit and dont save
"" I#                     Comment current line out with #

" Command Count Motion
"" f(                     Go forward to the char you want here (
"" F(                     Go backwards to the char you want
"" t(                     Go forward before the car you want here (
"" T(                     Go backward to the char you want
"" ;                      Goes forward to the next one
"" ,                      Goes backwards
"" df(                    Delete everything to the char you want here (
"" yf(                    Yank everything you want to the char you define
"" vf(                    Mark everything to the char you define

"" *                      Match all same words with that word under the cursor: n or SHIFT + N to navigate 
"" ciw                    Change the word under my cursor
"" :%s/wordToChange/newWord/g    Change all the word to the new word
"" :%s/wordToChange/newWord/gc   change all words but ask me for each
"" :reg                   Show all registers

" Macros
"" q+register             Start and end a macro save it to the given register
"" @+register             Replay macro from the given register
"" 5@+register            Replay 5 time the macro
