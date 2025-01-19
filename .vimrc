set relativenumber      " Display line numbers relative to the current line
set ignorecase          " Ignore case when searching
set hlsearch            " Highlight search results
syntax on               " Enable syntax highlight
set smartcase			" Use case-sensitive search if a capital letter is in the search
colorscheme desert

set smartindent			" Enable smart indentation
set autoindent			" Enable auto-indentation

set incsearch			" Show incremental search results
set showcmd			    " Show the current command at the bottom right

set showmatch			" Highlight matching parentheses/braces
set history=2000		" Increase command-line history

set nobackup			" Don't create backup files
set nowritebackup		" Don't create backup files when writing
set noswapfile			" Disable swap files
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000		" Increase the amount of undoes

set mouse=a			    " Enable mouse support in all modes

set spell			    " Enable spell checking z= Spell checking menu ]s next misspelled word [s previous word
set spelllang=en

set cursorline
set scrolloff=4

set wildmenu			" Auto complete for the menu access it with TAB

set laststatus=2		" Improved statusbar file"
set completeopt=menuone	" Shows in the insert mode with CTRL the completion menu

set expandtab           " Convert the tab to whitespaces
set tabstop=4           " Set how many whitespaces is a tab
set shiftwidth=4        " Define amount of whitespaces with indents (> or < command)
set list                " Show hidden chars
set listchars=tab:»·,trail:·,extends:>,precedes:<,eol:$

vnoremap <C-c> "+y      " copy to system clipboard with ctrl + c
map <C-v> "+P           " paste from clipboars with ctrl + v

set wrap                " warp text that extends beyond the screen length
set encoding=utf-8      " set file encoding

if filereadable(expand("~/.vimrc.plug)"))
    source ~/.vimrc.plug
endif

" Hotkeys
""                               gg first line
""                               G go to last line
"" "ay                           yank to register a
"" "+y                           yank to system clipboard
"" 0                             go to the begining of the line (to the zero chars)
"" $                             go to the end of the line
"" d$                            delete to the end of the line
"" ZZ                            Quit vim and save IF changes are made
"" ZQ                            Quit and dont save
"" I#                            Comment current line out with #


" Command Count Motion
"" f(                            go forward to the char you want here (
"" F(                            go backwards to the char you want
"" t(                            go forward before the car you want here (
"" T(                            go backward to the char you want
"" ;                             goes forward 
"" ,                             goes backwards
"" df(                           delete everything to the char you want (  
"" yf(                           yank everything you want to the char you define
"" vf(                           highlight everything to the char you define


"" *                             match all of the words under the curser afterwards shifft + n or shift + N (back to the prev or next word)
"" c+i+w                         change the word under my curser
"" :%s/wordToChange/newWord/g    change all the word to the new word
"" :%s/wordToChange/newWord/gc   change all words but ask me for each
"" y+i+w                         visual highlight in word
"" :reg                          show registers

" Makros
"" q+register                     start and end a macro
"" @+register                     replay macro  
"" 5@+register                    replay 5 time the macro
