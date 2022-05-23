" This file includes all plugins used
call plug#begin('~/.config/nvim/plugged')

" Interface
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'yggdroot/indentline'

" Movements
Plug 'junegunn/vim-easy-align'
Plug 'easymotion/vim-easymotion'
Plug 'matze/vim-move'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'christoomey/vim-tmux-navigator'

" Completion & Snippets
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
Plug 'honza/vim-snippets'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'wellle/tmux-complete.vim'
Plug 'mattn/emmet-vim'

" Searches
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'

" Integrations
Plug 'tpope/vim-vinegar'
Plug 'w0rp/ale'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'junegunn/gv.vim'
Plug 'neomake/neomake'
Plug 'tpope/vim-sensible'
Plug 'rhysd/git-messenger.vim'
Plug 'tpope/vim-projectionist'

" Commands
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'wellle/targets.vim'

" Languages & framework support
Plug 'ziglang/zig.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'fatih/vim-go'
Plug 'thoughtbot/vim-rspec'
Plug 'chemzqm/vim-jsx-improve'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'rust-lang/rust.vim'
" Plug 'hashivim/vim-terraform'
" Plug 'pearofducks/ansible-vim'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'ekalinin/Dockerfile.vim'
Plug 'cespare/vim-toml'
Plug 'tomlion/vim-solidity'

" Asynchronous
Plug 'skywind3000/asyncrun.vim'

" Add plugins to &runtimepath
call plug#end()

