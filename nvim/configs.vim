" Use deoplete
let g:deoplete#enable_at_startup = 1

" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
let g:UltiSnipsEditSplit="vertical"

" Indent line
let g:indentLine_color_term = 239
let g:indentLine_char = '¦'

" Better white space
autocmd BufWritePre * StripWhitespace

" Slim syntax highlights
autocmd BufNewFile,BufRead *.slim setlocal filetype=slim
