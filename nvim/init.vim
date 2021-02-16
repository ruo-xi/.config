" __  ____   __  _   ___     _____ __  __ ____   ____
"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
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
set tabstop=2
" set shiftwidth=2
set autoindent
set nocompatible

filetype plugin on
" ===
" === KeyBoard
" ===
let g:mapleader="\<Space>"
map Y "+y
map D "+d
map P "+p

map J 5j
" map K 5k

nnoremap s <nop>
nnoremap S :w<CR>
nnoremap Q :q<CR>
nnoremap R :source $MYVIMRC<CR>
nnoremap <C-TAB> :bnext<CR>
nnoremap <C-S-TAB> :bprevious<CR>

" ===
" === Install Plugins with Vim-Plug
" ===

call plug#begin('~/.vim/plugged')

" find and cd work dir
Plug 'airblade/vim-rooter'

" work dir tree
Plug 'kevinhwang91/rnvimr'

" provides a start screen  
Plug 'mhinz/vim-startify'
" visiable 	indent
Plug 'Yggdroot/indentLine'
" highlight
Plug 'nvim-treesitter/nvim-treesitter'
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
 Plug 'connorholyday/vim-snazzy'

" align
" Plug 'junegunn/vim-easy-align'

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
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown' ,{'for': ['markdown']}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
" Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
" Plug 'mzlogin/vim-markdown-toc' ,{'for': ['markdown']}
" Plug 'dkarter/bullets.vim' ,{'for': ['markdown']}

call plug#end()

let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
" let g:mkdp_browser = 'chromium --new-window'
let g:mkdp_browserfunc = 'g:Open_browser'
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

let g:mkdp_filetypes = ['markdown']
function! g:Open_browser(url)
				silent exec "chromium --new-window" . a:url . "&"
endfunction

" source markdown 
source ~/.config/nvim/markdown.vim
" source theme file
source ~/.config/nvim/theme.vim
" source coc plugin
source ~/.config/nvim/coc.vim
" coc.vim
let g:coc_global_extensions = [
	\	'coc-json',
	\	'coc-lists',
	\	'coc-explorer',
	\	'coc-snippets',
  \ 'coc-pairs']

" ======
" ====== config plugin
" ======

" indentline
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_enabled = 1
" vim-rooter
let g:rooter_target = '*.c,*.h,*.cpp,*.hpp,*.java,*.go'
let g:rooter_parterns = ['.git','MAKEFILE','go.mod','build.gradle']

" rnvim 
map <C-E> : RnvimrToggle<CR>
let g:rnvimr_enable_ex = 1
let g:rnvimr_enable_picker = 1
let g:rnvimr_hide_gitignore = -1
