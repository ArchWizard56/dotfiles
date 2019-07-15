inoremap ;fun func <++> (<++>) <++>{<cr><++><cr>}<C-c>?func<cr>:let @/ = ""<cr>wc4l
inoremap ;fl for <++>{<cr><++><cr>}<C-c>?for<cr>n:let @/ = ""<cr>wc4l
inoremap ;if if <++> {<cr><++><cr>}<C-c>?if<cr>:let @/ = ""<cr>wc4l
inoremap ;ef else if <++> {<cr><++><cr>}<C-c>?if<cr>:let @/ = ""<cr>wc4l
inoremap ;el else {<cr><++><cr>}<C-c>?<++><cr>:let @/ = ""<cr>c4l
nnoremap ;b :%! goformatVim %<cr>
nnoremap ;p :! goErrorVim %<cr>
nnoremap ;c :terminal make build <cr>i
nnoremap ;r :terminal  make run%<cr>i


