" This file includes all plugins used
call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'altercation/vim-colors-solarized'
Plug 'majutsushi/tagbar'
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'valloric/youcompleteme'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-rails'
Plug 'easymotion/vim-easymotion'
"Plug 'godlygeek/tabular'
Plug 'junegunn/vim-easy-align'
Plug 'vim-ruby/vim-ruby'
Plug 'rking/ag.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'fatih/vim-go'
Plug 'matze/vim-move'
Plug 'iCyMind/NeoSolarized'
Plug 'neovimhaskell/haskell-vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'mxw/vim-jsx'
Plug 'terryma/vim-multiple-cursors'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mattn/gist-vim'

" Add plugins to &runtimepath
call plug#end()
