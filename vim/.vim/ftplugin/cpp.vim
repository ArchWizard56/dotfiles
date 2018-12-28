inoremap ;fv void <++> (<++>) {<cr><++><cr>}<C-c>?void<cr>:let @/ = ""<cr>wciw
inoremap ;fi int <++> (<++>) {<cr><++><cr>}<C-c>?int<cr>:let @/ = ""<cr>wciw
inoremap ;fl for (int i=0;i<<++>;i++) {<cr><++><cr>}<C-c>?<++><cr>n:let @/ = ""<cr>c4l
inoremap ;wl while (<++>) {<cr><++><cr>}<C-c>?<++><cr>n:let @/ = ""<cr>c4l
inoremap ;if if (<++>) {<cr><++><cr>}<C-c>?if<cr>:let @/ = ""<cr>wlc4l
inoremap ;ef else if (<++>) {<cr><++><cr>}<C-c>?if<cr>:let @/ = ""<cr>wlc4l
inoremap ;el else {<cr><++><cr>}<C-c>?<++><cr>:let @/ = ""<cr>c4l
inoremap ;cpr class <++> {<cr>private:<cr><backspace><++> (<++>) {<cr><++><cr>}<cr><++><cr>};<C-c>?class<cr>w:let @/ = ""<cr>c4l
inoremap ;cpu class <++> {<cr>public:<cr><backspace><++> (<++>) {<cr><++><cr>}<cr><++><cr>};<C-c>?class<cr>w:let @/ = ""<cr>c4l
nnoremap ;c :terminal cd $(awk -F= '/CMAKE_HOME/{print $2}' $(upfind -name CMakeCache.txt)); cmake .; make<cr>i
nnoremap ;r :terminal  $(echo $(awk -F= '/CMAKE_HOME/{print $2}' $(upfind -name CMakeCache.txt))/$(awk -F= '/CMAKE_PROJECT/{print $2}' $(upfind -name CMakeCache.txt)) \| awk '{print $1$2}')<cr>i


