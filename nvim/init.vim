" __  ____   __  _   ___     _____ __  __ ____   ____
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
"| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|

" Author: @yu

" ===
" === Auto load for first time
" ===

if empty(glob('~/.config/nvim/autoload/plug.vim'))
        silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" ====================
" === Editor Setup ===
" ====================

" ===
" === System
" ===

" adjust parts of color
let &t_ut=''
" change to the directory of the file you opened
" set autochdir
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" make condig effictive on save
" autocmd BufWritePost $MYVIMRC source $MYVIMRC

" ===
" === Editor behavior
" ===
" set highlight
" syntax on   
" line number
"for markdown
set number  
set relativenumber 
					
set wildmenu
" dont't Display long lines as just one line
set wrap  
" high light search
set hlsearch  
set incsearch  " high light when typing
set nowrapscan  " search form end to start
" encoding
set encoding=utf-8 " set encoding display
set fileencoding=utf-8 " set the encoding written to file
set ignorecase    
set smartcase
" display
set noshowmode
" bahavier
set formatoptions-=cro                  " Stop newline continution of commentsSR
set nobackup
set nowritebackup
set scrolloff=5
" clipboard
" set clipboard=unnamedplus               " Copy paste between vim and everything else
" indent 

set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set nocompatible
set expandtab

au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml " foldmethod=indent
au! FileType yaml setlocal ts=2 sts=2 sw=2 
au! FileType go setlocal noexpandtab 

" ===
" === KeyBoard
" ===
let g:mapleader="\<Space>"
map Y "+y
map D "+d
map P "+p
 
map <C-j> 5j
map <C-k> 5k
nnoremap s <nop>
nnoremap S :w<CR>
nnoremap Q :q<CR>
nnoremap R :source $MYVIMRC<CR>

nnoremap <C-TAB> :tabnext<CR>
nnoremap <C-S-TAB> :tabprevious<CR>


" easy align
vnoremap ga :EasyAlign<CR>
" expand region
vnoremap <leader>v <Plug>(expand_region_expand)
vnoremap <leader>V <Plug>(expand_region_shrink)

" search
nnoremap n nzz
nnoremap N Nzz
nnoremap <leader>nh :nohlsearch<CR>

" ===
" === user-defined command
" ===
:command! CopyBuffer let @+ = expand('%')

" %a %I:%M %p
nmap <F3> i<C-R>=strftime("%Y-%m-%d")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d")<CR>

" ===
" === Vim-Plug
" ===

call plug#begin('~/.vim/plugged')

" find and cd work dir
Plug 'airblade/vim-rooter'

" bookmark
Plug 'MattesGroeger/vim-bookmarks'

" work dir tree
Plug 'kevinhwang91/rnvimr'

" provides a start screen  
Plug 'mhinz/vim-startify'

" visiable 	indent
Plug 'Yggdroot/indentLine'

" expand
Plug 'terryma/vim-expand-region'

" highlight
" Plug 'nvim-treesitter/nvim-treesitter' , {'do': ':TSUpdate'}
" Plug 'sheerun/vim-polyglot'

" auto completion
" Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" fuzzy finder 
" Plug 'junegunn/fzf.vim'
" Plug 'junegunn/fzf'
" Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" color theme
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'
" Plug 'connorholyday/vim-snazzy'
" Plug 'sainnhe/sonokai'

" align
Plug 'junegunn/vim-easy-align'

" tags
" Plug 'majutsushi/tagbar'
" Plug 'liuchengxu/vista.vim'

"float term
" Plug 'voldikss/vim-floaterm'

" for language

" java
" Plug 'artur-shaik/vim-javacomplete2'

" golang 
" Plug 'fatih/vim-go' , { 'for': ['go', 'vim-plug'], 'tag': '*', 'do': ':GoUpdateBinaries'}
" Plug 'dgryski/vim-godef'

" markdown
" Plug 'godlygeek/tabular'
" Plug 'plasticboy/vim-markdown' ,{'for': ['markdown']}
" Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
" Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
" Plug 'mzlogin/vim-markdown-toc' ,{'for': ['markdown']}
" Plug 'dkarter/bullets.vim' ,{'for': ['markdown']}

Plug 'vimwiki/vimwiki'
call plug#end()


" source markdown 
" source ~/.config/nvim/markdown.vim
" source theme file
source ~/.config/nvim/theme.vim
" source coc plugin
source ~/.config/nvim/coc.vim
" coc.vim
let g:coc_global_extensions = [
	\'coc-json',
	\'coc-lists',
	\'coc-explorer',
	\'coc-snippets',
    \'coc-pairs',
    \'coc-highlight',
    \'coc-go',]
"    \'coc-bookmark']
"    \'coc-java']

" ======
" ====== config plugin
" ======

" indentline
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_enabled = 1

" vim-rooter
let g:rooter_target = '/,*'
" let g:rooter_parterns = ['.git/']
let g:rooter_patterns = ['.git']
" rnvim 
map <leader>e : RnvimrToggle<CR>
let g:rnvimr_enable_ex = 1
let g:rnvimr_enable_picker = 1
let g:rnvimr_hide_gitignore = -1
let g:rnvimr_action = {
                \ '<C-t>': 'NvimEdit tabedit',
                \ '<C-x>': 'NvimEdit split',
                \ '<C-v>': 'NvimEdit vsplit',
                \ 'Tab': 'NvimEdit tabnew',
                \ 'gw': 'JumpNvimCwd',
                \ 'yw': 'EmitRangerCwd'
                \ }

" vim-bookmarks
let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1
let g:bookmark_auto_close = 1
" let g:bookmark_center = 1
" let g:bookmark_location_list = 1

" mark down
"autocmd Filetype markdown map <leader>w yiWi[<esc>Ea](<esc>pa)
" autocmd Filetype markdown inoremap <buffer> ,f <Esc>/<++><CR>:nohlsearch<CR>"_c4l
" autocmd Filetype markdown inoremap <buffer> ,w <Esc>/ <++><CR>:nohlsearch<CR>"_c5l<CR>
" autocmd Filetype markdown inoremap <buffer> ,n ---<Enter><Enter>
" autocmd Filetype markdown inoremap <buffer> ,b **** <++><Esc>F*hi
" autocmd Filetype markdown inoremap <buffer> ,s ~~~~ <++><Esc>F~hi
" autocmd Filetype markdown inoremap <buffer> ,i ** <++><Esc>F*i
" autocmd Filetype markdown inoremap <buffer> ,d `` <++><Esc>F`i
" autocmd Filetype markdown inoremap <buffer> ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
" autocmd Filetype markdown inoremap <buffer> ,m - [ ] 
" autocmd Filetype markdown inoremap <buffer> ,p ![](<++>) <++><Esc>F[a
" autocmd Filetype markdown inoremap <buffer> ,a [](<++>) <++><Esc>F[a
" autocmd Filetype markdown inoremap <buffer> ,1 #<Space><Enter><++><Esc>kA
" autocmd Filetype markdown inoremap <buffer> ,2 ##<Space><Enter><++><Esc>kA
" autocmd Filetype markdown inoremap <buffer> ,3 ###<Space><Enter><++><Esc>kA
" autocmd Filetype markdown inoremap <buffer> ,4 ####<Space><Enter><++><Esc>kA
" autocmd Filetype markdown inoremap <buffer> ,l --------<Enter>
