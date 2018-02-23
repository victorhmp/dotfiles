set nocompatible
filetype off

"=== Plugins ===

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'posva/vim-vue'

Plugin 'zchee/deoplete-jedi', { 'for': 'python' }
Plugin 'fishbullet/deoplete-ruby', { 'for': 'ruby' }
Plugin 'zchee/deoplete-clang', { 'for': ['c', 'cpp'] }
Plugin 'artur-shaik/vim-javacomplete2', { 'for': 'java' }

call vundle#end()
filetype plugin indent on

"=== General Options ===

colorscheme gruvbox

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Show the filename in the window titlebar
set title

" Don’t reset cursor to start of line when moving around.
set nostartofline

" Disable error bells
set noerrorbells

" Open NERDTree when vim opens up
" autocmd vimenter * NERDTree

" Use system clipboard
set clipboard=unnamed

"=== Mappings Options ===

map <C-n> :NERDTreeToggle<CR>

"=== Interface Options ===

syntax on
set number
set mouse=a
set splitbelow
set splitright
set updatetime=250

"=== Identation Options ===

set wrap
set linebreak
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=80
set autoindent

set background=dark

"=== Syntastic options ===

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_c_include_dirs = ['include']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 7
let g:syntastic_error_symbol = '☠'
let g:syntastic_warning_symbol = '⚠'

let g:syntastic_enable_racket_racket_checker = 1

"=== Airline Options ===

let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols={}
endif

let g:airline_detect_crypt = 0
let g:airline_detect_spell = 0

"=== NERDCommenter Options ===

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

"=== Theme Options ===

let g:gruvbox_termcolors=16
set background=dark
set termguicolors
highlight Comment cterm=italic

