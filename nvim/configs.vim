" Use deoplete
let g:deoplete#enable_at_startup     = 1
let g:deoplete#disable_auto_complete = 1

" Ultisnips
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
" let g:UltiSnipsEditSplit="vertical"
" let g:UltiSnipsSnippetDirectories = ['~/.config/nvim/ftplugin/UltiSnips', 'ftplugin/UltiSnips']

" Indent line
let g:indentLine_color_term = 239
let g:indentLine_char = '¦'

" Lightline
let g:lightline = { 'colorscheme': 'powerline' }

" JSX
let g:jsx_ext_required = 0
let g:xml_syntax_folding = 1
let g:syntastic_javascript_checkers = ['eslint']

" Better white space
autocmd BufWritePre * StripWhitespace

" Slim syntax highlights
autocmd BufNewFile,BufRead *.slim setlocal filetype=slim

" Netrw
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_altv = 1
let g:netrw_alto = 1

" neosnippets
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

imap <expr><TAB>
 \ pumvisible() ? "\<C-n>" :
 \ neosnippet#expandable_or_jumpable() ?
 \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

let g:neosnippet#snippets_directory = ['~/.config/nvim/snippets', '~/.config/nvim/plugged/vim-snippets/snippets']
