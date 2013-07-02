fun! MySys()
   return "$1"
endfun
set runtimepath=~/.vim_runtime,~/vim_runtime/after,\$VIMRUNTIME
source ~/.vim_runtime/vimrc
helptags ~/.vim_runtime/doc
syntax enable
set background=light
colorscheme solarized

filetype plugin indent on
