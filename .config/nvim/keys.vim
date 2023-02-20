" This file includes all custom keybinding
" General --------------------
map  <silent> <Leader>nt :Ntree<CR>
map  <silent> <Leader>pi :PlugInstall<CR>
map  <silent> <Leader>pu :PlugUpdate<CR>
map  <silent> <Leader>pg :PlugUpgrade<CR>
map  <silent> <Leader>pc :PlugClean!<CR>
map  <silent> <Leader>pl :vsp $HOME/.config/nvim/plugins.vim<CR>
map  <silent> <Leader>pk :vsp $HOME/.config/nvim/keys.vim<CR>
map  <silent> <Leader>pp :vsp $HOME/.config/nvim/configs.vim<CR>
map  <silent> <Leader>rl :source $HOME/.config/nvim/init.vim<CR>
map  <silent> <Leader>w  :w<CR>
map  <silent> <Leader>q  :q<CR>
map  <silent> <C-c>      "+y
map  <silent> <Leader>v  "+p
map  <silent> <Leader>n  :vsp<CR>
map  <silent> <Leader>df :Remove!<CR>
map  <Leader>mv :Move<Space>
map  <silent> <Leader>ct :AsyncRun -silent ctags -R<CR>
nmap <CR> ]<Space>
nmap <C-CR> [<Space>
map <Leader>aa :normal ggVG<CR>
map <Leader>ya :%y+<CR>
map <Leader>da :%d<CR>
map <Leader>f :ALEFix<CR>
nmap cp <Esc>
map <Leader>bf :Buffers<CR>
noremap <silent> cp :let @+=expand("%:p")<CR>
noremap <silent> cf :let @+=expand("%:t")<CR>
nmap <Leader>bd :bufdo bd<CR>

" Movements --------------------
nmap <BS> <C-w>h
nmap <Leader><Leader> <C-^>
vmap <C-k> <Plug>MoveBlockUp
vmap <C-j> <Plug>MoveBlockDown
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>

nmap <F5> <Plug>NetrwRefresh

" ZoomFullPanel
nmap Z <C-w>\|
" UnZoom
nmap zz <C-w>=

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
if executable('rg')
  nmap <Leader>ag :Rg<Space>
  nmap <silent> fw :Rg <C-R><C-W><CR>
else
  nmap <Leader>ag :Ag<Space>
  nmap <silent> fw :Ag <C-R><C-W><CR>
endif
nmap <silent> ft :Tags <C-R><C-W><CR>

map <Leader>cm :Commits<CR>
map <Leader>cb :BCommits<CR>
map <C-p> :Files<CR>

" Easymotion
map  / <Plug>(easymotion-sn)
map  ;  <Plug>(easymotion-prefix)
map  N <Plug>(easymotion-prev)
map  n <Plug>(easymotion-next)
nmap ;r <Plug>(easymotion-repeat)<CR>
nmap <Leader>cw <Plug>(easymotion-sn)<C-R><C-W><CR>
nmap <Leader>j <Plug>(easymotion-j)
nmap <Leader>k <Plug>(easymotion-k)
nmap <Leader>ss <Plug>(easymotion-sn)<C-R>*<CR>
omap / <Plug>(easymotion-tn)

" Tagbar
nmap <Leader>tg :TagbarToggle<CR>

" Git
map <Leader>co  :Gread<CR>
map <Leader>ga  :Gwrite<CR>
map <Leader>gac :Git commit -am ""<LEFT>
map <Leader>gb  :Git blame<CR>
map <Leader>gc  :Git commit -m ""<LEFT>
map <Leader>gd  :Gvdiff<CR>
map <Leader>gn  :GMove<Space>
map <Leader>gr  :GRemove<CR>
map <Leader>gs  :Git<CR>
map <Leader>gv  :GV!<CR>
map <Leader>gk  :GV<CR>
vmap <Leader>dp  :diffput<CR>

" Rails
map <Leader>bi  :AsyncRun -mode=term bundle install<CR>
map <Leader>br   :normal obinding.irb<Esc>
map <Leader>d   :normal orequire 'pry'; binding.pry<Esc>
map <Leader>dv  :normal o- require 'pry'; binding.pry<Esc>
map <Leader>bb  :normal orequire 'byebug'; byebug<Esc>
map <Leader>bbv  :normal o- require 'byebug'; byebug<Esc>
map <Leader>bg  :normal odebugger<Esc>
map <Leader>bgv :normal o<% debugger %><Esc>

" vim-rails
map <Leader>ra  :Rails<Space>
map <Leader>re  :Rextract<Space>
map <Leader>rk  :Rake<Space>
map <Leader>mg  :AsyncRun bundle exec rake db:create db:migrate<CR>
map <Leader>rf  :R<CR>
map <Leader>rft :RT<CR>
map <Leader>rfv :RV<CR>
map <Leader>af  :A<CR>
map <Leader>ac :AT<CR>
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
map <Leader>tq :Tquery<Space>
map <Leader>tj :Tjavascript<Space>
map <Leader>tl :Tlib<Space>

" vim-rspec
map <Leader>rs :call RunCurrentSpecFile()<CR>
map <Leader>rn :call RunNearestSpec()<CR>
map <Leader>rp :call RunLastSpec()<CR>

" Terraform
map <Leader>tp :AsyncRun
      \ -cwd=$(VIM_FILEDIR)
      \ terragrunt plan -no-color<CR>
map <Leader>tr :AsyncRun
      \ -cwd=$(VIM_FILEDIR)
      \ terragrunt validate -no-color<CR>
map <Leader>tk :AsyncRun
      \ -cwd=$(VIM_FILEDIR)
      \ tflint --no-color<CR>
map <Leader>tt :AsyncRun
      \ -cwd=$(VIM_FILEDIR) -silent -save=1 -post=checktime
      \ terragrunt fmt<CR>
map <Leader>tf :AsyncRun
      \ -silent -save=1 -post=checktime
      \ terragrunt fmt %<CR>
map <Leader>ta :AsyncRun
      \ -mode=term -cwd=$(VIM_FILEDIR) -save=1
      \ terragrunt apply<CR>
map <Leader>ti :AsyncRun
      \ -mode=term -cwd=$(VIM_FILEDIR) -save=1
      \ terragrunt init<CR>
map <Leader>tn :AsyncRun
      \ -cwd=$(VIM_FILEDIR) -silent -post=checktime
      \ touch {main,variables,outputs,versions}.tf<CR>

" AsyncRun
map <Leader>ar :AsyncRun -cwd=$(VIM_FILEDIR)<Space>
map <Leader>at :AsyncRun -mode=term -cwd=$(VIM_FILEDIR)<Space>


" Autocomplete & snippets
inoremap <silent><expr> <C-j> "\<C-n>"
inoremap <silent><expr> <C-k> "\<C-p>"

" neosnippets
" imap <C-k> <Plug>(neosnippet_expand_or_jump)
" smap <C-k> <Plug>(neosnippet_expand_or_jump)
" xmap <C-k> <Plug>(neosnippet_expand_target)

imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)"
      \: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)"
      \: "\<TAB>"

" GitMessenger
nmap , <Plug>(git-messenger)

" Neovim terminal
tnoremap <C-e> <C-\><C-n>
