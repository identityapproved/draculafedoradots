set scrolloff=8
" Tab Options
set tabstop=2 
set softtabstop=2
set shiftwidth=2
set expandtab

" Disable backups and swap files
set nobackup
set nowritebackup
set noswapfile
set nocompatible

" Indentation
set smartindent

" Numbers
set number
set relativenumber

" Fix splitting
set splitbelow splitright

set hidden " Open other files if current one is not saved

set ignorecase " Ignore case when searching
set smartcase  " When searching try to be smart about cases
set hlsearch! " Don't highlight search term
set incsearch  " Jumping search

" Always show the status line
set laststatus=2

" Horisontal/vertical line on cursor location
set cursorline
" set cursorcolumn

set encoding=UTF-8

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'wakatime/vim-wakatime'

Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'bling/vim-bufferline'

Plug 'psliwka/vim-smoothie'
Plug 'Yggdroot/indentLine'

" Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }

" Frontend related
Plug 'ap/vim-css-color'
Plug 'ryanoasis/vim-devicons'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax
Plug 'styled-components/vim-styled-components'
Plug 'mattn/emmet-vim'
Plug 'mustache/vim-mustache-handlebars'

" Python
Plug 'vim-python/python-syntax'
Plug 'davidhalter/jedi-vim'

Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'PhilRunninger/nerdtree-buffer-ops'
Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'preservim/nerdcommenter'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'

call plug#end()

" CoC extensions
let g:coc_global_extensions = ['coc-tsserver', 'coc-json']

" Coc&NERDTree settings
source $HOME/.vim/modules/coc.vim
source $HOME/.vim/modules/nerdtree.vim

" Airline
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline#extensions#tabline#formatter = 'unique_tail_improved' " f/p/file-name.js
let g:airline_powerline_fonts = 1
let g:airline_theme='dracula'

" Theme
set termguicolors
colorscheme dracula
let g:dracula_colorterm = 0
" set notermguicolors
" set background=dark
" set t_Co=256
" hi clear
syntax on


" Transparent background
hi Normal     ctermbg=NONE guibg=NONE
hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE

" Indentation
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

let mapleader = " "
nnoremap <leader>pv :Vex<CR>
nnoremap <leader>ps :Sex<CR>
nnoremap <silent><leader><CR> :so ~/.vimrc \| :PlugInstall<CR>
nnoremap <leader>pf :GFiles<CR>
nnoremap <C-p> :Files<CR>
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>

nnoremap <silent><F7> :set hlsearch!<CR>

vnoremap <leader>p "_dP
vnoremap <leader>y "+y
nnoremap <leader>y "+cy
nnoremap <leader>Y gg"+yG 
" nnoremap <C-b> <Esc>:Lex<CR>:vertical resize 23<CR>
nnoremap <silent><C-b> :NERDTreeToggle<CR>

nnoremap <PageUp>   :bprevious<CR>
nnoremap <PageDown> :bnext<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Emmet shortcuts
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','

