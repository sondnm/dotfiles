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
let g:lightline = { 'colorscheme': 'powerline' }

" ale linting and fixing
let g:ale_linters = {
      \ 'javascript': ['eslint', 'prettier'],
      \ 'typescript': ['eslint', 'prettier', 'typecheck'],
      \ 'c': ['clang', 'gcc'],
      \ 'ruby': ['ruby'],
      \ 'rust': ['cargo', 'rustc'],
      \ 'go': ['gofmt', 'golint'],
      \ 'ansible': ['ansible-lint'],
      \ 'dockerfile': ['hadolint'],
      \ 'eruby': ['erubi'],
      \ 'fish': ['fish'],
      \ 'json': ['jsonlint'],
      \ 'racket': ['raco'],
      \ 'terraform': ['tflint'],
      \ 'yaml': ['yamllint'],
      \ }
let g:ale_fixers = {
      \ 'javascript': ['eslint', 'prettier'],
      \ 'typescript': ['eslint', 'prettier'],
      \ 'ruby': ['rubocop'],
      \ 'rust': ['rustfmt'],
      \ 'go': ['gofmt'],
      \ 'terraform': ['terraform'],
      \ 'sql': ['sqlfmt'],
      \ 'json': ['jq', 'fixjson'],
      \ '*': ['trim_whitespace']
      \ }
let g:ale_lint_on_text_changed = 'normal'
let g:ale_fix_on_save = 0

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
  let $FZF_DEFAULT_COMMAND = 'rg --hidden --no-ignore -l "" -g "!.git/*"'
else
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
endif

" Signify
set updatetime=100
let g:signify_sign_change = '~'
if executable('delta')
  let g:signify_difftool = 'delta'
endif
