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

" Vim airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0

" Airline symbols
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep      = ''
let g:airline_left_alt_sep  = ''
let g:airline_right_sep     = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch   = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr   = ''
let g:airline#extensions#tabline#left_sep      = ''
let g:airline#extensions#tabline#left_alt_sep  = ''
let g:airline#extensions#tabline#right_sep     = ''
let g:airline#extensions#tabline#right_alt_sep = ''


" Vim airline themes
let g:airline_theme = 'solarized'
let g:airline_solarized_normal_green = 1
let g:airline_solarized_dark_inactive_border = 1

" Better white space
autocmd BufWritePre * StripWhitespace

" Slim syntax highlights
autocmd BufNewFile,BufRead *.slim setlocal filetype=slim
