" This file includes all custom keybinding
" General --------------------
map <silent> <Leader>nt :NERDTree<CR>
map <silent> <Leader>pi :PlugInstall<CR>
map <silent> <Leader>rl :source $HOME/.config/nvim/init.vim<CR>
map <silent> <Leader>w  :w<CR>
map <silent> <Leader>q  :q<CR>
map <silent> <C-c>      "*y
map <silent> <Leader>v  "*p<CR>
nmap     <CR>       o<Esc>k
nnoremap <S-CR>     O<Esc>j
map      <Leader>n  :vsp<CR>
map      <Leader>df :Remove!<CR>
map      <silent>   <Leader>ct :! ctags -R<CR><CR>


" Movements --------------------
nmap <BS> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Windows and tabs --------------------
map <Leader>te :tabe<Space>

" Searches ------------------------------
map <Leader>ag :Ag<Space>
map <C-p> :Files<CR>
map <Leader>cm :Commits<CR>
nnoremap <silent> ff :NERDTreeFind<CR>
nnoremap <silent> fw :Ag <C-R><C-W><CR>

" Git
map <Leader>co  :Gread<CR>
map <Leader>ga  :Gwrite<CR>
map <Leader>gac :Gcommit -am ""<LEFT>
map <Leader>gb  :Gblame<CR>
map <Leader>gc  :Gcommit -m ""<LEFT>
map <Leader>gd  :Gvdiff<CR>
map <Leader>gm  :Gmove<SPACE>
map <Leader>gr  :Gremove<CR>
map <Leader>gs  :Gstatus<CR>

" Rails
map <Leader>a <ESC>ggVG<CR>
map <Leader>av :AV<CR>
map <Leader>bb :!bundle install<CR>
map <Leader>bd <ESC>obinding.pry<ESC>
map <Leader>bdv <ESC>o- binding.pry<ESC>

" vim-rails
map <Leader>r  :Rails<Space>
map <Leader>en :Eenvironment<CR> " Edit config/application.rb
map <Leader>db :AV<CR> " Edit config/database.yml
map <Leader>rt :Einitializer<CR> " Edit config/routes.rb
map <Leader>rt :Elib<CR> " Edit Gemfile
map <Leader>el :Elayout<CR> " Edit current layout or application layout
map <Leader>ac :Vcontroller application<CR>
map <Leader>am :Vmodel application_record<CR>
map <Leader>ah :Vhelper application<CR>
map <Leader>aj :Vjavascript application<CR>
map <Leader>as :Vstylesheet application<CR>
map <Leader>em :Emodel<SPACE>
map <Leader>ev :Eview<CR>
map <Leader>ec :Econtroller<SPACE>
map <Leader>eh :Ehelper<SPACE>
map <Leader>ej :Ejavascript<SPACE>
map <Leader>es :Estylesheet<SPACE>
map <Leader>vm :Vmodel<SPACE>
map <Leader>vv :Vview<SPACE>
map <Leader>vc :Vcontroller<SPACE>
map <Leader>vh :Vhelper<SPACE>
map <Leader>vj :Vjavascript<SPACE>
map <Leader>vs :Vstylesheet<SPACE>
map <Leader>tm :Tmodel<SPACE>
map <Leader>tv :Tview<SPACE>
map <Leader>tc :Tcontroller<SPACE>
map <Leader>th :Thelper<SPACE>
map <Leader>tj :Tjavascript<SPACE>
map <Leader>ts :Tstylesheet<SPACE>
