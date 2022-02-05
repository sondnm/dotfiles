" vim -b : edit binary using xxd-format!
augroup Binary
  au!
  au BufReadPre  *.bin let &bin=1
  au BufReadPost *.bin if &bin | %!xxd
  au BufReadPost *.bin set ft=xxd | endif
  au BufWritePre *.bin if &bin | %!xxd -r
  au BufWritePre *.bin endif
  au BufWritePost *.bin if &bin | %!xxd
  au BufWritePost *.bin set nomod | endif
augroup END

augroup filetypes
  au BufNewFile,BufRead *.sol setfiletype solidity
augroup END

augroup templates
  " au BufNewFile *.rb so ~/.config/nvim/templates/rb.txt
  au BufNewFile *.yml so ~/.config/nvim/templates/yml.txt
augroup END

" Slim syntax highlights
augroup syntax_highlighting
  autocmd BufNewFile,BufRead *.slim setlocal filetype=slim
  autocmd BufNewFile,BufRead *.hcl setlocal filetype=terraform
  autocmd BufNewFile,BufRead *.nomad setlocal filetype=terraform
augroup END

