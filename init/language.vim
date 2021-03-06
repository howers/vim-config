" Whitespace & highlighting & language-specific config
" ----------------------------------------------------

" Strip trailing whitespace for code files on save
function! StripTrailingWhitespace()
  let save_cursor = getpos(".")
  %s/\s\+$//e
  call setpos('.', save_cursor)
endfunction

function! SetUpEnvironment()
  let l:path = expand('%:p')
  if l:path =~ 'doximity-client-vue'
    setlocal includeexpr=substitute(v:fname,'\\~/','','g') suffixesadd+=.vue
  endif
endfunction

" C family
autocmd BufWritePre *.m,*.h,*.c,*.mm,*.cpp,*.hpp call StripTrailingWhitespace()

" Ruby, Rails
autocmd BufWritePre *.rb,*.yml,*.js,*.css,*.less,*.sass,*.scss,*.html,*.xml,*.erb,*.haml,*.feature call StripTrailingWhitespace()

" Java, PHP
autocmd BufWritePre *.java,*.php call StripTrailingWhitespace()

" Haml
au BufRead,BufNewFile *.hamlc set ft=haml

" JavaScript, ECMAScript
au BufRead,BufNewFile *.es6 set ft=javascript
" au BufRead,BufNewFile *.vue set ft=javascript

" Highlight Ruby files
au BufRead,BufNewFile *.thor set filetype=ruby
au BufRead,BufNewFile *.god set filetype=ruby
au BufRead,BufNewFile Gemfile* set filetype=ruby
au BufRead,BufNewFile Vagrantfile set filetype=ruby
au BufRead,BufNewFile soloistrc set filetype=ruby

" Highlight Jasmine fixture files as HTML
autocmd BufRead,BufNewFile *.jasmine_fixture set filetype=html

" Insert ' => '
autocmd FileType ruby imap  <Space>=><Space>

" mess around with the expectations for the filename when messing around with
" vue
" augroup js
  " autocmd!
  " autocmd FileType vue setlocal includeexpr=substitute(v:fname,'\\~/','','g') suffixesadd+=.vue
" augroup END
