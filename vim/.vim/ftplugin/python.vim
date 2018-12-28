nnoremap ;c :terminal python3 <cr> i
nnoremap ;r :terminal python3 %<cr> i
inoremap ;im if __name__ == "__main__":<cr>
inoremap ;df def <++> (<++>):<cr><++><C-c>?def<cr>:let @/ = ""<cr>wciw
