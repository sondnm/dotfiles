" Leader <space>
let mapleader=" "

" Plugins ----------------------------------------
source ~/.config/nvim/general.vim
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/colors.vim
source ~/.config/nvim/configs.vim
source ~/.config/nvim/keys.vim

if filereadable('~/.config/nvim/local.vim')
  source ~/.config/nvim/local.vim
endif
