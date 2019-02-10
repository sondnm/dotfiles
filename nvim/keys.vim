" This file includes all custom keybinding
" General --------------------
map  <silent> <Leader>nt :Ntree<CR>
map  <silent> <Leader>pi :PlugInstall<CR>
map  <silent> <Leader>pu :PlugUpdate<CR>
map  <silent> <Leader>pg :PlugUpgrade<CR>
map  <silent> <Leader>pc :PlugClean!<CR>
map  <silent> <Leader>rl :source $HOME/.config/nvim/init.vim<CR>
map  <silent> <Leader>w  :w<CR>
map  <silent> <Leader>q  :q<CR>
map  <silent> <C-c>      "*y
map  <silent> <Leader>v  "*p
map  <silent> <Leader>n  :vsp<CR>
map  <silent> <Leader>df :Remove!<CR>
map  <Leader>mv :Move<Space>
map  <silent> <Leader>ct :! ctags -R --exclude={.git,log,tmp,node_modules,"vendor","app/assets","*.min.js","*.min.css"}<CR><CR>
nmap <CR> ]<Space>
nmap <S-CR> [<Space>
map <Leader>aa :normal ggVG<CR>
map <Leader>ya :%y+<CR>
map <Leader>da :%d<CR>
map <Leader>f :StripWhitespace<CR>
map <Leader>bf :Buffers<CR>
nmap cp <Esc>
noremap <silent> cp :let @+=expand("%:p")<CR>
nmap <Leader>bd :bufdo bd<CR>

" Movements --------------------
nmap <BS> <C-w>h
nmap <Leader><Leader> <C-^>
vmap <C-k> <Plug>MoveBlockUp
vmap <C-j> <Plug>MoveBlockDown

" EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Airline
nmap <A-1> <Plug>AirlineSelectTab1
nmap <A-2> <Plug>AirlineSelectTab2
nmap <A-3> <Plug>AirlineSelectTab3
nmap <A-4> <Plug>AirlineSelectTab4
nmap <A-5> <Plug>AirlineSelectTab5
nmap <A-6> <Plug>AirlineSelectTab6
nmap <A-7> <Plug>AirlineSelectTab7
nmap <A-8> <Plug>AirlineSelectTab8
nmap <A-9> <Plug>AirlineSelectTab9

" Windows and tabs --------------------
map <Leader>te :tabe<Space>

" Fix indentation --------------------
map <F7> mzgg=G`z

" Searches ------------------------------
map <Leader>ag :Ag<Space>
map <C-p> :Files<CR>
map <Leader>cm :Commits<CR>
" nmap <silent> ff :NERDTreeFind<CR>
nmap <silent> fw :Ag <C-R><C-W><CR>

" Autocomplete & snippets
inoremap <silent><expr> <C-j> "\<C-n>"
inoremap <silent><expr> <C-k> "\<C-p>"

" Easymotion
map  / <Plug>(easymotion-sn)
map  <Leader>s  <Plug>(easymotion-prefix)
map  <Leader>cw <Plug>(easymotion-sn)<C-R><C-W><CR>
nmap <Leader>j  <Plug>(easymotion-j)
nmap <Leader>k  <Plug>(easymotion-k)

" Tagbar
nmap <silent> <F8> :TagbarToggle<CR>

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
map <Leader>gv  :GV!<CR>
map <Leader>gk  :GV<CR>

" Rails
map <Leader>bi  :!bundle install<CR>
map <Leader>br   :normal obinding.irb<Esc>
map <Leader>d   :normal orequire 'pry'; binding.pry<Esc>
map <Leader>dv  :normal o- binding.pry<Esc>
map <Leader>bb  :normal obyebug<Esc>
map <Leader>bbv  :normal o- byebug<Esc>
map <Leader>bg  :normal odebugger<Esc>
map <Leader>bgv :normal o<% debugger %><Esc>

" vim-rails
map <Leader>ra  :Rails<Space>
map <Leader>re  :Rextract<Space>
map <Leader>rk  :Rake<Space>
map <Leader>mg  :Rake db:create db:migrate<CR>
map <Leader>rf  :R<CR>
map <Leader>rft :RT<CR>
map <Leader>rfv :RV<CR>
map <Leader>af  :A<CR>
map <Leader>at :AT<CR>
map <Leader>av :AV<CR>
" Edit config/environment.rb or config/application.rb
map <Leader>ap :Eenvironment<CR>
" Edit config/database.yml
map <Leader>db :e ./config/database.yml<CR>
" Edit db/routes.rb
map <Leader>rt :Vinitializer<CR>
" Edit db/schema.rb
map <Leader>sc :Vschema<CR>
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
map <Leader>ef :Eform<Space>
map <Leader>eq :Equery<Space>
map <Leader>ej :Ejavascript<Space>
map <Leader>el :Elib<Space>
map <Leader>vm :Vmodel<Space>
map <Leader>vv :Vview<Space>
map <Leader>vc :Vcontroller<Space>
map <Leader>vh :Vhelper<Space>
map <Leader>vf :Vform<Space>
map <Leader>vq :Vquery<Space>
map <Leader>vj :Vjavascript<Space>
map <Leader>vl :Vlib<Space>
map <Leader>tm :Tmodel<Space>
map <Leader>tv :Tview<Space>
map <Leader>tc :Tcontroller<Space>
map <Leader>th :Thelper<Space>
map <Leader>tf :Tform<Space>
map <Leader>tq :Tquery<Space>
map <Leader>tj :Tjavascript<Space>
map <Leader>tl :Tlib<Space>

" RSpec.vim mappings
map <Leader>zrs :! zeus rspec %:<C-r>=line('.')<CR><CR>
map <Leader>rs :! bundle exec rspec %:<C-r>=line('.')<CR><CR>

