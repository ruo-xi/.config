" __  ____   __  _   ___     _____ __  __ ____   ____
"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
"| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|

" Author: @yu

" ===
" === Auto load for first time
" ===
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
				\https://raw.githubusercontent.com/junegunn/vim-plug/master/plug-vim
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
" high light
syntax on   
" line number
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
set shiftwidth=2
set autoindent


" ===
" === KeyBoard
" ===
let g:mapleader="\<Space>"
map Y "+y
map D "+d
map P "+p

map J 5j
" map K 5k

map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>
map <C-TAB> :bnext<CR>
map <C-S-TAB> :bprevious<CR>
" noremap ; :


" ===
" === Install Plugins with Vim-Plug
" ===

call plug#begin('~/.vim/plugged')

" find and cd work dir
Plug 'airblade/vim-rooter'

" work dir tree
" Plug 'preservim/nerdtree'
" Plug 'jistr/vim-nerdtree-tabs'
" Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'kevinhwang91/rnvimr'

" manage key On-demand lazy load
" Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

" provides a start screen  
Plug 'mhinz/vim-startify'

" highlight
" Plug 'nvim-treesitter/nvim-treesitter'

" auto completion
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim'

"fuzzy finder 
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
" Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" color theme
" Plug 'morhetz/gruvbox'
Plug 'connorholyday/vim-snazzy'

" align
Plug 'junegunn/vim-easy-align'

" tags
Plug 'majutsushi/tagbar'
Plug 'liuchengxu/vista.vim'

"float term
Plug 'voldikss/vim-floaterm'

" for language

" java
" Plug 'artur-shaik/vim-javacomplete2'

" golang 
Plug 'fatih/vim-go' , { 'for': ['go', 'vim-plug'], 'tag': '*', 'do': ':GoUpdateBinaries'}
Plug 'dgryski/vim-godef'

" markdown
" Plug 'plasticboy/vim-markdown' ,{'for': ['markdown']}
" Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
" Plug 'mzlogin/vim-markdown-toc' ,{'for': ['markdown']}
" Plug 'dkarter/bullets.vim' ,{'for': ['markdown']}

call plug#end()
" source theme file
source ~/.config/nvim/theme.vim

" bullets 
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \ 'scratch'
    \]

" vim-rooter
let g:rooter_target = '*.c,*.h,*.cpp,*.hpp,*.java,*.go'
let g:rooter_parterns = ['.git','MAKEFILE','go.mod','build.gradle']
" nerdtree
" autocmd vimenter * NERDTree
