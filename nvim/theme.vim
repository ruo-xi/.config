" Always show tabs
set showtabline=2
" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
" Switch to your current theme
let g:airline_theme = 'onedark'
" We don't need to see things like -- INSERT -- anymore
set noshowmode

" set background=dark
" colorscheme gruvbox

let g:SnazzyTransparent = 1
let g:lightline = {
\'colorscheme' : 'snazzy'
\}
colorscheme snazzy
