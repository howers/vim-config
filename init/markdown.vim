" .md files read as markdown
autocmd BufNewFile,BufRead *.md set filetype=markdown

" Open all folds in Markdown.
autocmd FileType markdown normal zR

" Soft wrap markdown
let g:pencil#wrapModeDefault = 'soft'

augroup pencil
  autocmd!
  autocmd FileType markdown call pencil#inti()
augroup END
