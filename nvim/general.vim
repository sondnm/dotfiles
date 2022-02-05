" General Settings ------------------------------

set number                     " Turn line numbers on
set backspace=indent,eol,start " Allow backspace in insert mode
set history=100                " Store :cmdline history
set showcmd                    " Show incomplete cmds down the bottom
set showmode                   " Show current mode down the bottom
set gcr=a:blinkon0             " Disable cursor blink
set ruler                      " Show the cursor position all the time
set visualbell                 " No sounds
set autoread                   " Reload files changed outside vim
set laststatus=2               " Always display the status line
set autowrite                  " Automatically :write before running commands
" set cursorline                 " Highlight current line slow af
" set cursorcolumn               " Highlight current column slow af
set wildmenu                   " Visual autocomplete for command menu
set lazyredraw                 " Redraw only when we need to
set showmatch                  " Highlight matching [{()}]
set clipboard=unnamed
set scrolloff=5
set nocompatible
set splitbelow
set splitright
set noshowmode                 " Don't show INSERT/NORMAL mode line

" Turn Off Swap Files ------------------------------

set noswapfile                 " Turn off swap file
set nobackup                   " Turn off backup function
set nowritebackup              " Turn off backup file

" Indentation --------------------------------------

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set shiftround

" Enable filetype indentation ---------------------
filetype plugin indent on

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Use one space, not two, after punctuation.
set nojoinspaces

" Remove preview
set completeopt-=preview

" Auto indent pasted text (working incorrectly with new neovim)
" nnoremap p p=`]<C-o>
" nnoremap P P=`]<C-o>

" Search -------------------------------------------
set incsearch                " Find the next match as we type the search
set ignorecase               " Ignore case when searching...
set smartcase                " ...unless we type a capital

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
set hidden

" Enable syntax highlighting
syntax enable

