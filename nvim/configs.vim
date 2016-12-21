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

" Vim airline
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#show_buffers = 0
" let g:airline#extensions#tabline#tab_nr_type = 2
" let g:airline#extensions#tabline#buffer_idx_mode = 1

" Airline symbols
" if $TERM == 'rxvt-unicode-256color'
"   let g:airline_powerline_fonts = 0
" else
"   let g:airline_powerline_fonts = 1
"   if !exists('g:airline_symbols')
"     let g:airline_symbols = {}
"   endif
" endif

" Vim airline themes
" let g:airline_theme = 'solarized'
" let g:airline_solarized_normal_green = 1
" let g:airline_solarized_dark_inactive_border = 1

" Better white space
autocmd BufWritePre * StripWhitespace

" Slim syntax highlights
autocmd BufNewFile,BufRead *.slim setlocal filetype=slim
