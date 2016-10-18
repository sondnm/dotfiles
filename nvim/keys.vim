" This file includes all custom keybinding
" General --------------------
map  <silent> <Leader>nt :NERDTree<CR>
map  <silent> <Leader>pi :PlugInstall<CR>
map  <silent> <Leader>pu :PlugInstall!<CR>
map  <silent> <Leader>pg :PlugUpgrade<CR>
map  <silent> <Leader>pc :PlugClean!<CR>
map  <silent> <Leader>rl :source $HOME/.config/nvim/init.vim<CR>
map  <silent> <Leader>w  :w<CR>
map  <silent> <Leader>q  :q<CR>
map  <silent> <C-c>      "*y
map  <silent> <Leader>v  "*p
map  <silent> <Leader>n  :vsp<CR>
map  <silent> <Leader>df :Remove!<CR>
map  <silent> <Leader>ct :! ctags -R<CR><CR>
nmap <CR> ]<Space>
nmap <S-CR> [<Space>
map <Leader>aa :normal ggVG<CR>
map <Leader>ya :%y+<CR>
map <Leader>da :%d<CR>
nmap <Leader>ca <Leader>aagc<CR>

" Movements --------------------
nmap <BS> <C-w>h
nmap <Leader><Leader> <C-^>
vmap <C-k> <Plug>MoveBlockUp
vmap <C-j> <Plug>MoveBlockDown

" EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Windows and tabs --------------------
map <Leader>te :tabe<Space>

" Searches ------------------------------
map <Leader>ag :Ag<Space>
map <C-p> :Files<CR>
map <Leader>cm :Commits<CR>
nmap <silent> ff :NERDTreeFind<CR>
nmap <silent> fw :Ag <C-R><C-W><CR>

" Easymotion
map / <Plug>(easymotion-sn)
map  <Leader>s  <Plug>(easymotion-prefix)
map  <Leader>cw <Plug>(easymotion-sn)<C-R><C-W><CR>
nmap <Leader>j  <Plug>(easymotion-j)
nmap <Leader>k  <Plug>(easymotion-k)

" Git
map <Leader>co  :Gread<CR>
map <Leader>ga  :Gwrite<CR>
map <Leader>gac :Gcommit -am ""<LEFT>
map <Leader>gb  :Gblame<CR>
map <Leader>gc  :Gcommit -m ""<LEFT>
map <Leader>gd  :Gvdiff<CR>
map <Leader>gm  :Gmove<Space>
map <Leader>gr  :Gremove<CR>
map <Leader>gs  :Gstatus<CR>

" Rails
map <Leader>av  :AV<CR>
map <Leader>bi  :!bundle install<CR>
map <Leader>d   :normal obinding.pry<Esc>
map <Leader>dv  :normal o- binding.pry<Esc>
map <Leader>bg  :normal odebugger<Esc>
map <Leader>bgv :normal o<% debugger %><Esc>

" vim-rails
map <Leader>ra  :Rails<Space>
map <Leader>re  :Rextract<Space>
map <Leader>rk  :Rake<Space>
map <Leader>rm  :Rake db:create db:migrate<CR>
map <Leader>rf  :R<CR>
map <Leader>rft :RT<CR>
map <Leader>rfv :RV<CR>
map <Leader>af  :A<CR>
map <Leader>aft :AT<CR>
map <Leader>afv :AV<CR>
" Edit config/environment.rb or config/application.rb
map <Leader>ap :Eenvironment<CR>
" Edit config/database.yml
map <Leader>db :e ./config/database.yml<CR>
" Edit db/schema.rb
map <Leader>rt :Vinitializer<CR>
" Edit Gemfile
map <Leader>g  :Vlib<CR>
" Edit current layout or application layout
map <Leader>ay :Vlayout<CR>
map <Leader>ac :Vcontroller application<CR>
map <Leader>am :Vmodel application_record<CR>
map <Leader>ah :Vhelper application<CR>
map <Leader>aj :Vjavascript application<CR>
map <Leader>as :Vstylesheet application<CR>
map <Leader>em :Emodel<Space>
map <Leader>ev :Eview<Space>
map <Leader>ec :Econtroller<Space>
map <Leader>eh :Ehelper<Space>
map <Leader>ej :Ejavascript<Space>
map <Leader>es :Estylesheet<Space>
map <Leader>en :Eenvironment<Space>
map <Leader>el :Elib<Space>
map <Leader>ei :Einitializer<Space>
map <Leader>ey :Elayout<Space>
map <Leader>eg :Emigration<Space>
map <Leader>ed :Eschema<Space>
map <Leader>et :Etask<Space>
map <Leader>vm :Vmodel<Space>
map <Leader>vv :Vview<Space>
map <Leader>vc :Vcontroller<Space>
map <Leader>vh :Vhelper<Space>
map <Leader>vj :Vjavascript<Space>
map <Leader>vs :Vstylesheet<Space>
map <Leader>vn :Venvironment<Space>
map <Leader>vl :Vlib<Space>
map <Leader>vi :Vinitializer<Space>
map <Leader>vy :Vlayout<Space>
map <Leader>vg :Vmigration<Space>
map <Leader>vd :Vschema<Space>
map <Leader>vt :Vtask<Space>
map <Leader>tm :Tmodel<Space>
map <Leader>tv :Tview<Space>
map <Leader>tc :Tcontroller<Space>
map <Leader>th :Thelper<Space>
map <Leader>tj :Tjavascript<Space>
map <Leader>ts :Tstylesheet<Space>
map <Leader>tn :Tenvironment<Space>
map <Leader>tl :Tlib<Space>
map <Leader>ti :Tinitializer<Space>
map <Leader>ty :Tlayout<Space>
map <Leader>tg :Tmigration<Space>
map <Leader>td :Tschema<Space>
map <Leader>tt :Ttask<Space>
