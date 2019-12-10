
set runtimepath=~/dotfiles/vim_runtime,~/dotfiles/vim_runtime/after,\$VIMRUNTIME
source ~/dotfiles/vim_runtime/vimrc
helptags ~/dotfiles/vim_runtime/doc
colorscheme Tomorrow-Night
set background=dark
syntax enable
set number

filetype plugin indent on
hi LineNr ctermfg=magenta

nnoremap <Left> :normal i 💩 <CR>
nnoremap <Right> :normal i 👊 <CR>
