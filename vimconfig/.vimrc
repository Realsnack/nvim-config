" Disable compatibility with vi
set nocompatible

" Enable filetype detection and plugin support
filetype on
filetype plugin on
syntax on

" Line numbering and cursorline
set relativenumber
set number
set cursorline
" set cursorcolumn " Uncomment if you want cursor column as well

" Indentation settings
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

" Search settings
set hlsearch          " Highlight search matches
set incsearch         " Incremental search
set ignorecase        " Case-insensitive search
set smartcase         " Case-sensitive search when uppercase letters are used
set showcmd           " Display the current command in the status line
set showmode          " Show the current mode (insert, normal, etc.)
set showmatch         " Highlight matching parentheses
set history=1000      " Set command history size

" Backup and undo settings
set nobackup

" Scroll settings
set scrolloff=8       " Keep 8 lines of context when scrolling
set nowrap            " Disable line wrapping
set signcolumn=yes    " Always show the sign column (for diagnostics, etc.)

" Terminals and color settings
set termguicolors     " Enable 24-bit RGB colors in the terminal
colorscheme tokyonight

" Set command history size
set history=1000

" Enable filetype-based indenting
filetype indent on

" Wildmenu settings
set wildmenu
set wildmode=list:longest

" Ignore certain file types for file completion
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Color column at 80 characters
set colorcolumn=80

" Update time for various events
set updatetime=50     " Faster response for certain events (e.g., CursorHold)

" Set space as the leader key
let mapleader = " "

" Normal mode remaps
nnoremap <leader>pv :Ex<CR>                " Open file explorer with <leader>pv
nnoremap <C-d> <C-d>zz                      " Center the screen when using <C-d>
nnoremap <C-u> <C-u>zz                      " Center the screen when using <C-u>
nnoremap n nzzzv                            " Make search results more visible
nnoremap N Nzzzv                            " Make previous search results more visible
nnoremap <leader>qq :q<CR>                  " Quit with <leader>qq
nnoremap <leader>wq :wq<CR>                 " Save and quit with <leader>wq

" Visual mode remaps
vnoremap J :m '>+1<CR>gv=gv                 " Move selected lines down with J
vnoremap K :m '<-2<CR>gv=gv                 " Move selected lines up with K

" X-mode remap (the "greatest remap ever")
xnoremap <leader>p "_dP                    " Paste without overwriting the clipboard

" Insert mode remap (escape with <C-c>)
inoremap <C-c> <Esc>                        " Escape from insert mode with <C-c>

