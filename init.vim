let g:system_copy#paste_command='xclip -sel clipboard -o'set encoding=utf-8
filetype plugin indent on
syntax on
set clipboard=unnamed
set completeopt=noinsert,menuone,noselect
set hidden
set inccommand=split
set mouse=a
set number relativenumber
set splitbelow splitright
set title
set ttimeoutlen=0
set shiftwidth=4
set tabstop=4
set expandtab
set nobackup
set scrolloff=1440
set nowrap
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch
set wildmenu
set wildmode=list:longest
set foldmethod=indent
set t_Co=256
let term_program=$TERM_PROGRAM
if term_program !=? 'Apple_Terminal'
    set termguicolors
else
    if $TERM !=? 'xterm-256color'
        set termguicolors
    endif
endif
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

let s:hidden_all = 0
set showmode
set ruler
set laststatus=0
set showcmd

let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_browse_split=3
let g:netrw_altv=1
let g:netrw_winsize=15
let g:netrw_keepdir=0
let g:netrw_localcopydircmd='cp -r'
let NERDTreeShowHidden=1
let g:indentLine_enabled = 1
let g:indentLine_setColors = 1
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_bgcolor_gui = '#00000000'
let g:system_copy#copy_command='xclip -sel clipboard'
let g:system_copy#paste_command='xclip -sel clipboard -o'

colorscheme atom-dark-256
hi Normal guibg=NONE ctermbg=NONE 
hi clear LineNr

nnoremap <A-f> :NERDTreeToggle<CR>
inoremap <A-f> <Esc>:NERDTreeToggle<CR>
nnoremap <A-S-f> :FZF<CR>
inoremap <A-S-f> <Esc>:FZF<CR>
nnoremap <A-S-t> :sp<CR>:terminal<CR>
nnoremap <C-s> :wa<CR>
inoremap <C-s> <Esc>:wa<CR>i
inoremap <A-q> <Esc>
inoremap <C-R> <Esc>:so %<CR>i
" tabs
nnoremap <A-1> 1gt
nnoremap <A-2> 2gt
nnoremap <A-3> 3gt
nnoremap <A-4> 4gt
nnoremap <A-5> 5gt
nnoremap <A-6> 6gt
nnoremap <A-7> 7gt
nnoremap <A-8> 8gt
nnoremap <A-9> 9gt
nnoremap <A-0> 10gt
nnoremap <C-w> :wq<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-S-w> :q<CR>
inoremap <C-w> <Esc>:wq<CR>
inoremap <C-S-w> <Esc>:q<CR>
inoremap <C-t> <Esc>:tabnew<CR>
" folding
nnoremap <A-S-u> zM
nnoremap <A-S-o> zR
nnoremap <A-u> zc
nnoremap <A-o> zo
inoremap <A-S-u> <Esc>zci
inoremap <A-S-o> <Esc>zRi
inoremap <A-u> <Esc>zai
inoremap <A-o> <Esc>zoi
" movement
nnoremap w k
nnoremap a h
nnoremap s j
nnoremap d l
vnoremap w k
vnoremap a h
vnoremap s j
vnoremap d l
inoremap <A-w> <Esc>ka
inoremap <A-a> <Esc>ha
inoremap <A-s> <Esc>ja
inoremap <A-d> <Esc>la
nnoremap <S-w> 4k
nnoremap <S-s> 4j
inoremap <A-S-w> <Esc>4ka
inoremap <A-S-s> <Esc>4ja
nnoremap <S-a> <C-Left>
nnoremap <S-d> <C-Right>
inoremap <A-S-a> <Esc><C-Left>i
inoremap <A-S-d> <Esc><C-Right>i
" go to insert mode
nnoremap i a
nnoremap <A-h> I
nnoremap <A-m> A
nnoremap I O
nnoremap K o
inoremap <A-h> <Esc>I
inoremap <A-m> <Esc>A
inoremap <A-k> <Esc>o
inoremap <A-i> <Esc>O
" delete
inoremap <A-j> <BS>
inoremap <A-l> <Del>
inoremap <A-S-j> <Esc>dwi
inoremap <A-S-l> <Esc>dbi
inoremap <C-x> <Esc>Vxi
inoremap <C-S-c> <Esc>Vy
inoremap <C-v> <Esc>pli
inoremap <A-v> <Esc>lv
" select
nnoremap <C-a> ggVG
inoremap <C-a> <Esc>ggVGG
" story
nnoremap <C-z> u
nnoremap <C-y> :redo<CR>
inoremap <C-z> <Esc>ui
inoremap <C-y> <Esc>:redo<CR>i

nnoremap <F1> :!cargo run --release<CR>
nnoremap <F2> :!cargo run --bin compile --release<CR> 
inoremap <F1> <Esc>:! cargo run --release<CR>
inoremap <F2> <Esc>:! cargo run --bin compile --release<CR>

call plug#begin('~/.config/nvim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'ap/vim-css-color'
Plug 'preservim/nerdtree'
Plug 'plasticboy/vim-markdown'
Plug 'elvessousa/sobrio'
Plug 'ryanoasis/vim-devicons'
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'frazrepo/vim-rainbow'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/fzf'
Plug 'christoomey/vim-system-copy'

call plug#end()

let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
