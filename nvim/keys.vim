" This file includes all custom keybinding
map <Leader>nt :NERDTree<CR>
map <Leader>pi :PlugInstall<CR>
map <Leader>rl :source $HOME/.config/nvim/init.vim<CR>
map <Leader>w :w<CR>
map <Leader>q :q<CR>
map <Leader>te :tabe<Space>
map <Leader>v "*p<CR>
"map <Leader>ct :Start!l;tags -R ./ $(bundle list --paths) --languages=ruby --exclude={.git,log,app/assets/webpack,node_modules,"*.min.js","*.min.css"}<CR>

" Fix <C-h> not working as expected
" <C-h> will produce <BS> instead of ^H
nmap <BS> <C-W>h
