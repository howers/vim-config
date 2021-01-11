function MakeAWiki(path, name, frequency)
  let wiki = {}
  let wiki.path = a:path 
  let wiki.name = a:name
  let wiki.syntax = 'markdown'
  let wiki.ext = 'md'
  let wiki.diary_rel_path= 'notes/'
  let wiki.diary_index = 'notes'
  let wiki.diary_header = 'Notes'
  let wiki.diary_frequency = a:frequency
  return wiki
endfunction

autocmd BufNewFile,BufRead *.wiki set filetype=markdown
let wiki_1 = MakeAWiki('~/vimwiki/', 'Grabbag', 'weekly')
let wiki_2 = MakeAWiki('~/work/workbook/doximity', 'Work', 'daily')

let g:vimwiki_list = [wiki_1, wiki_2]


