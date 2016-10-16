" This file includes all plugins used
call plug#begin('~/.config/nvim/plugged')

" Interface
Plug 'iCyMind/NeoSolarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ntpeters/vim-better-whitespace'
Plug 'Yggdroot/indentLine'

" Movements
Plug 'junegunn/vim-easy-align'
Plug 'easymotion/vim-easymotion'
Plug 'matze/vim-move'
Plug 'terryma/vim-multiple-cursors'
Plug 'christoomey/vim-tmux-navigator'

" Integrations
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'rking/ag.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/gist-vim'
Plug 'majutsushi/tagbar'

" Commands
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Languages support
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'fatih/vim-go'
Plug 'neovimhaskell/haskell-vim'

" Add plugins to &runtimepath
call plug#end()
