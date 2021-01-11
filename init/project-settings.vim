" Setup project/folder specific settings 
" ----------------------------------------------------

function! SetUpEnvironment()
  let l:path = expand('%:p')
  if l:path =~ 'work/doximity-client-vue'
    setlocal includeexpr=substitute(v:fname,'\\~/','','g') suffixesadd+=.vue,.js
  endif
  if l:path =~ 'work/campaigns'
    setlocal path+=**
  endif
  if l:path =~ 'work/doximity'
    setlocal path+=**
  endif
endfunction

" mess around with the expectations for the filename when messing around with
" vue
augroup projects
  autocmd!
  autocmd FileType vue call SetUpEnvironment() 
  autocmd FileType javascript call SetUpEnvironment() 
  autocmd FileType ruby call SetUpEnvironment() 
augroup END

