" This file includes all plugins used
call plug#begin('~/.config/nvim/plugged')

" Interface
Plug 'iCyMind/NeoSolarized'
Plug 'itchyny/lightline.vim'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'ntpeters/vim-better-whitespace'
Plug 'Yggdroot/indentLine'

" Movements
Plug 'junegunn/vim-easy-align'
Plug 'easymotion/vim-easymotion'
Plug 'matze/vim-move'
Plug 'terryma/vim-multiple-cursors'
Plug 'christoomey/vim-tmux-navigator'

" Completion & Snippets
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'epilande/vim-es2015-snippets'

" Integrations
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
" Plug 'rking/ag.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/gist-vim'
Plug 'majutsushi/tagbar'
Plug 'junegunn/gv.vim'

" Commands
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

" Languages & framework support
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'fatih/vim-go'
Plug 'neovimhaskell/haskell-vim'
" Plug 'eagletmt/neco-ghc'
Plug 'slim-template/vim-slim'
Plug 'AndrewRadev/switch.vim'
" Plug 'c.vim'
" Plug 'st.vim'
" Plug 'thoughtbot/vim-rspec'
Plug 'chemzqm/vim-jsx-improve'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'rust-lang/rust.vim'

" Add plugins to &runtimepath
call plug#end()
