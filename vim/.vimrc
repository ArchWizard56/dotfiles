filetype off
set nocompatible
if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif
call plug#begin('~/.local/share/nvim/plugged')
Plug 'vimwiki/vimwiki'
Plug 'ajh17/VimCompletesMe'
Plug 'skammer/vim-css-color'
Plug 'mattn/emmet-vim'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'scrooloose/nerdtree'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-fugitive'
Plug 'skywind3000/asyncrun.vim'
Plug 'tpope/vim-surround'
Plug 'dylanaraps/wal.vim'
Plug 'sbdchd/neoformat'
Plug 'altercation/vim-colors-solarized'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'
call plug#end()
filetype plugin indent on
filetype on
set background=dark
colorscheme solarized
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set showmatch
set incsearch
set hlsearch
nnoremap j gj
nnoremap k gk
set so=10
syntax on
nnoremap <C-t> :tabnew<cr>
nnoremap ;sy :set spell spelllang=en_us<cr>
nnoremap ;gw :Gwrite<cr>
nnoremap ;sn :set nospell<cr> 
let g:user_emmet_leader_key=';ex'
nnoremap ;; <C-c>/<++><cr>:let @/ = ""<cr>c4l
nnoremap ;ntf <C-c>:NERDTreeFocus<cr>
nnoremap ;ntt <C-c>:NERDTreeToggle<cr>
nnoremap ;ntg <C-c>:NERDTreeVCS<cr>
nnoremap ;ntm <C-c>:NERDTreeMirror<cr>
inoremap ;; <C-c>/<++><cr>:let @/ = ""<cr>c4l
nnoremap ;m i<++><C-c>
nnoremap ;b <C-6>
inoremap ;m <++><C-c>
set mouse=a
set spellfile=~/.config/nvim/spell/en.utf-8.add
