" Use deoplete
let g:deoplete#enable_at_startup = 1
call deoplete#initialize()
call deoplete#custom#option({
      \ 'smart_case': v:true,
      \ })
let g:tmuxcomplete#trigger = 'omnifunc'

" Disable deoplete when using multiple cursor
function g:Multiple_cursors_before()
  call deoplete#custom#buffer_option('auto_complete', v:false)
endfunction
function g:Multiple_cursors_after()
  call deoplete#custom#buffer_option('auto_complete', v:true)
endfunction

" Indent line
let g:indentLine_color_term = 239
let g:indentLine_char = '¦'

" Lightline
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['gitbranch', 'readonly', 'filename', 'modified'] ],
      \   'right': [ ['lineinfo'],
      \              ['percent'],
      \              ['fileformat', 'fileencoding', 'filetype'] ],
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \ }
      \ }
let g:lightline.tab = {
      \ 'active': [ 'tabnum', 'filename', 'modified' ],
      \ 'inactive': [ 'tabnum', 'filename', 'modified' ]
      \ }

" ale linting and fixing
let g:ale_linters = {
      \ 'javascript': ['prettier', 'eslint'],
      \ 'typescript': ['prettier', 'eslint', 'typecheck'],
      \ 'c': ['clang', 'gcc'],
      \ 'ruby': ['ruby'],
      \ 'python': ['pylint'],
      \ 'rust': ['analyzer'],
      \ 'go': ['gofmt', 'golint'],
      \ 'ansible': ['ansible-lint'],
      \ 'dockerfile': ['hadolint'],
      \ 'eruby': ['erubi'],
      \ 'fish': ['fish'],
      \ 'json': ['jsonlint'],
      \ 'racket': ['raco'],
      \ 'terraform': ['tflint'],
      \ 'hcl': ['terraform-fmt'],
      \ 'solidity': ['solhint'],
      \ 'yaml': ['yamllint'],
      \ }
let g:ale_fixers = {
      \ 'javascript': ['eslint', 'prettier'],
      \ 'typescript': ['eslint', 'prettier'],
      \ 'ruby': ['rubocop'],
      \ 'rust': ['rustfmt'],
      \ 'go': ['gofmt'],
      \ 'hcl': ['terraform-fmt'],
      \ 'terraform': ['terraform'],
      \ 'sql': ['sqlfmt'],
      \ 'json': ['jq', 'fixjson'],
      \ 'solidity': ['solhint'],
      \ '*': ['trim_whitespace']
      \ }
let g:ale_lint_on_text_changed = 'normal'
let g:ale_fix_on_save = 0
let g:ale_ruby_rubocop_executable = 'bundle'

" JSX
let g:jsx_ext_required = 0
let g:xml_syntax_folding = 1

" Netrw
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
let g:netrw_banner = 0
let g:netrw_altv = 1
let g:netrw_alto = 1

" neosnippets
if has('conceal')
  set conceallevel=2
  set concealcursor=niv
endif

let g:neosnippet#snippets_directory = [
      \ '~/.config/nvim/snippets',
      \ '~/.config/nvim/plugged/vim-snippets/snippets'
      \ ]

" terraform
let g:terraform_fmt_on_save=1

" RSpec
let g:rspec_command = "AsyncRun -mode=term bundle exec rspec {spec}"
let g:rspec_runner = "os_x_iterm2"

" asyncrun
let g:asyncrun_open = 12

" EasyMotion
let g:EasyMotion_smartcase = 1
let g:EasyMotion_enter_jump_first = 1
let g:EasyMotion_add_search_history=1

" vim-move
let g:move_key_modifier = 'C'

" git-messenger
let g:git_messenger_no_default_mappings = v:true
let g:git_messenger_always_into_popup = v:true

" Fix slow Gstatus
" https://github.com/tpope/vim-fugitive/issues/1176
set shell=/bin/bash\ --login

" FZF
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --hidden --no-ignore -l "" -g "!{log,.git,.terragrunt-cache}/" -g "!tmp/cache" -g "!*.{jpg,png,svg,cache,min.css,min.js,min.scss}"'
elseif executable('fd')
  let $FZF_DEFAULT_OPTS = '--ansi'
  let $FZF_DEFAULT_COMMAND = 'fd --hidden --color always -E "{.git,.terragrunt-cache,log,tmp}/*","*.{jpg,png,svg,cache}","*.min.{scss,css,js}"'
else
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
endif

function! s:fzf_grep_filter(include_pattern, exclude_pattern, qargs, bang)
  call fzf#vim#grep(
        \   'rg --column --line-number --no-heading --color=always --smart-case -g "'.a:include_pattern.'" --glob "'.a:exclude_pattern.'" -- '.shellescape(a:qargs), 1,
        \   fzf#vim#with_preview(), a:bang)
endfunction

command! -bang -nargs=* Rgmodel
      \ call s:fzf_grep_filter("app/models/**/*.{rb}", "", <q-args>, <bang>0)

command! -bang -nargs=* Rgview
      \ call s:fzf_grep_filter("app/views/**/*.{haml,erb,slim,txt}", "", <q-args>, <bang>0)

command! -bang -nargs=* Rgcontroller
      \ call s:fzf_grep_filter("app/controllers/**/*.{rb}", "", <q-args>, <bang>0)

command! -bang -nargs=* Rgblueprint
      \ call s:fzf_grep_filter("app/blueprints/**/*.{rb}", "", <q-args>, <bang>0)

command! -bang -nargs=* Rgquery
      \ call s:fzf_grep_filter("app/queries/**/*.{rb}", "", <q-args>, <bang>0)

command! -bang -nargs=* Rgform
      \ call s:fzf_grep_filter("app/forms/**/*.{rb}", "", <q-args>, <bang>0)

command! -bang -nargs=* Rgasset
      \ call s:fzf_grep_filter("app/assets/**/*.{scss,css,js,ts,es6}", "", <q-args>, <bang>0)

" Signify
set updatetime=100
let g:signify_sign_change = '~'
if executable('delta')
  let g:signify_difftool = 'delta'
endif

" Dirvish
" let g:dirvish_mode = ':silent keeppatterns g@\v/\.[^\/]+/?$@d _'
