function! DirvishToggleDotFiles() abort
  if !exists('g:dirvish_mode')
    let g:dirvish_mode = ':silent keeppatterns g@\v/\.[^\/]+/?$@d _'
  else
    unlet g:dirvish_mode
  end
endfunction

function! DirvishCreateFile() abort
  " Prompt for new filename
  let filename = input('File name: ')
  if trim(filename) == ''
    return
  endif

  " Append filename to the path of the current buffer
  let filepath = expand("%") . filename

  let output = system("touch " . filepath)
  if v:shell_error
    call s:logError(cmd)
  endif
endf

function! DirvishCreateDirectory() abort
  let dirname = input('Directory name: ')
  if trim(dirname) == ''
    return
  endif
  let dirpath = expand("%") . dirname
  if isdirectory(dirpath)
    redraw
    echomsg printf('"%s" already exists.', dirpath)
    return
  endif

  let output = system("mkdir " . dirpath)
  if v:shell_error
    call s:logError(output)
  endif
endf

augroup dirvish_config
  " Map `t` to open in new tab.
  autocmd FileType dirvish
        \  nnoremap <silent><buffer> t :call dirvish#open('tabedit', 0)<Bar>Dirvish %<CR>
        \ | xnoremap <silent><buffer> t :call dirvish#open('tabedit', 0)<Bar>Dirvish %<CR>
  autocmd FileType dirvish
        \ sort ,^.*[\/],
  autocmd FileType dirvish
        \ nnoremap <silent> <buffer> gh :call DirvishToggleDotFiles()<Bar>Dirvish %<CR>
  autocmd FileType dirvish
        \ nnoremap <buffer> % :call DirvishCreateFile()<Bar>Dirvish %<CR>
  autocmd FileType dirvish
        \ nnoremap <buffer> + :call DirvishCreateDirectory()<Bar>Dirvish %<CR>
augroup END

