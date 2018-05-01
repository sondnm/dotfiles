" Use deoplete
let g:deoplete#enable_at_startup     = 1
let g:deoplete#disable_auto_complete = 1

" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
let g:UltiSnipsEditSplit="vertical"

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
