set relativenumber		" Display line numbers relative to the current line"
set ignorecase			" Ignore case when searching"
set hlsearch			" Highlight search results"
syntax on			" Enable syntax highlight"
set smartcase			" Use case-sensitive search if a capital letter is in the search"
colorscheme desert

set smartindent			" Enable smart indentation"
set autoindent			" Enable auto-indentation"

set incsearch			" Show incremental search results"
set showcmd			" Show the current command at the bottom right"

set showmatch			" Highlight matching parentheses/braces"
set history=2000		" Increase command-line history z= Spell checking menu ]s next misspelled word [s previous word"

set nobackup			" Don't create backup files"
set nowritebackup		" Don't create backup files when writing"
set noswapfile			" Disable swap files"

set mouse=a			" Enable mouse support in all modes"

set spell			" Enable spell checking z= Spell checking menu ]s next misspelled word [s previous word"
set spelllang=en

set cursorline
set scrolloff=4

set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000		" Increase the amount of undoes"

set wildmenu			" Auto complete for the menu access it with TAB"


set laststatus=2		" See things like the current file"
set completeopt=menuone		" Shows in the insert mode with CTRL the completion menu"

"set expandtab
"set tabstop=4
"set shiftwidth=4
set list
set listchars=tab:»·,trail:·,extends:>,precedes:<,eol:$
