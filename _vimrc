colorscheme darkblue
set number
set linebreak
set encoding=utf-8
syntax enable
set ignorecase
set smartcase

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

let s:fontsize = 12
function! AdjustFontSize(amount)
    let s:fontsize = s:fontsize+a:amount
    :execute "GuiFont! Consolas:h" . s:fontsize
endfunction

noremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>
noremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>

nnoremap <C-Insert> :tabnew<CR>
nnoremap <C-Delete> :tabclose<CR>
