fun! MySys()
   return "$1"
endfun
set runtimepath=~/.vim_runtime,~/vim_runtime/after,\$VIMRUNTIME
source ~/.vim_runtime/vimrc
helptags ~/.vim_runtime/doc
colorscheme Tomorrow-Night
set background=dark
syntax enable

filetype plugin indent on
hi LineNr ctermfg=magenta
