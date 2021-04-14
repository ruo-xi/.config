" Always show tabs
set showtabline=2

" enable tabline
" let g:airline_section_b = 
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ''
" let g:airline#extensions#tabline#left_alt_sep = ''
" let g:airline#extensions#tabline#right_sep = ''
" let g:airline#extensions#tabline#right_alt_sep = ''
" Switch to your current theme
let g:airline_theme = 'gruvbox'
" We don't need to see things like -- INSERT -- anymore
set noshowmode

set termguicolors
colorscheme gruvbox

autocmd CursorHold * silent call CocActionAsync('highlight')

" colorscheme snazzy


" sonokai 
" let g:sonokai_style = 'default' " default, atlantis, andromeda, shusia, maia
" let g:sonokai_enable_italic = 1
" let g:sonokai_disable_italic_comment = 1
" let g:sonokai_current_word = 'bold'
" let g:airline_theme = 'sonokai'
" let g:sonokai_diagnostic_line_highlight = 1
" let g:sonokai_transparent_background = 1

" colorscheme sonokai
