" === General Settings ===
set relativenumber           " Display line numbers relative to the current line
set ignorecase               " Ignore case when searching
set hlsearch                 " Highlight search results
set syntax=on                " Enable syntax highlighting
set smartcase                " Use case-sensitive search if a capital letter is in the search
colorscheme desert

" === Indentation and Tabs ===
set shiftwidth=4             " Number of spaces for each level of indentation
set tabstop=4                " Number of spaces a tab character represents
set expandtab                " Use spaces for tabs
set smartindent              " Enable smart indentation
set autoindent               " Enable auto-indentation
filetype plugin indent on    " Enable auto-indentation

" === Incremental Search ===
set incsearch                " Show incremental search results
set showcmd                  " Show the current command in the bottom right

" === Matching and History ===
set showmatch                " Highlight matching parentheses/braces
set history=2000             " Increase command-line history

" === Backup and Swap Files ===
set nobackup                  " Don't create backup files
set nowritebackup             " Don't create backup files when writing
set noswapfile                " Disable swap files

" === Mouse Support and Cursor Line ===
set mouse=a                   " Enable mouse support in all modes
set cursorline                " Highlight the current line

" === Spell Checking ===
set spelllang=en " ,de         " Set spell check languages to English and German
set spell                     " Enable spell checking

" === Remapped Keybindings ===
inoremap " ""<left>          " Auto-close double quotes
inoremap ' ''<left>          " Auto-close single quotes
inoremap ( ()<left>          " Auto-close parentheses
inoremap [ []<left>          " Auto-close square brackets
inoremap { {}<left>          " Auto-close curly braces
nnoremap <C-s> :w<CR>        " Remap Ctrl+s to save the file
