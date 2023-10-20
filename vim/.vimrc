set shell=bash
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
set hlsearch " Highlight search term
set incsearch  " Jumping search
set showmatch " Show matching words during a search.

" Always show the status line
set laststatus=2

" Horisontal/vertical line on cursor location
set cursorline
" set cursorcolumn

" Yank to global clipboard
set clipboard=unnamedplus

set encoding=utf-8
set t_Co=256
set termencoding=utf-8

let g:polyglot_disabled = ['markdown']

call plug#begin('~/.vim/plugged')

" Navigation / Files
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'francoiscabrol/ranger.vim'

Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'PhilRunninger/nerdtree-buffer-ops'
Plug 'PhilRunninger/nerdtree-visual-selection'

" Colors
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Plug 'bling/vim-bufferline'

" Feels
Plug 'psliwka/vim-smoothie'
Plug 'Yggdroot/indentLine'
Plug 'wakatime/vim-wakatime'
Plug 'preservim/nerdcommenter'
Plug 'meain/vim-printer'

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

" Pascal
Plug 'boeckmann/vim-freepascal'

" Python
Plug 'vim-python/python-syntax'
Plug 'davidhalter/jedi-vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'

" AI
Plug 'github/copilot.vim'

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
" hi clear
syntax on

" Transparent background
hi Normal     ctermbg=NONE guibg=NONE
hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE

" Indentation
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" Make calcurse notes markdown conpatible
autocmd BufRead,BufNewFile /tmp/calcurse* set filetype=markdown
autocmd BufRead,BufNewFile ~/.calcurse/notes/* set filetype=markdown

" Mappings
let mapleader = " "
nnoremap <leader>pv :Vex<CR>
nnoremap <leader>ps :Sex<CR>
nnoremap <silent><leader><CR> :so ~/.vimrc \| :PlugInstall<CR>
nnoremap <leader>pf :GFiles<CR>
nnoremap <C-p> :Files<CR>
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>

nnoremap <silent><C-b> :NERDTreeToggle<CR>

nnoremap <silent><F7> :set hlsearch!<CR>

" Copy / Text manipulations
vnoremap <leader>p "_dP
vnoremap <leader>y "+y
nnoremap <leader>y "+cy
nnoremap <leader>Y gg"+yG 
" nnoremap <C-b> <Esc>:Lex<CR>:vertical resize 23<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Buffers remaps
nnoremap <leader>bn :bnext<cr>
nnoremap <leader>bp :bprevious<cr>
nnoremap <leader>bd :bdelete<cr>
nnoremap <leader>bl :Buffers<cr>

" Emmet shortcuts
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','

" Printer remaps
let g:vim_printer_print_below_keybinding = '<leader>prn'
let g:vim_printer_print_above_keybinding = '<leader>PRN'
