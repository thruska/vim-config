set tabstop=4
set shiftwidth=4
set expandtab
set number


set paste
set guitablabel=%t
set ruler
set hlsearch
set ignorecase
set autoread
set cursorline
set modeline
syntax on
set relativenumber
set autoindent

"set t_Co=256
"let g:rehash256 = 1
"let g:molokai_original = 1


"Set options for gvim
set guioptions-=l
set guioptions-=L
"set guioptions-=r
set guioptions-=R
set guioptions-=T
set guifont=Courier\ New\ 10

let mapleader="\<Space>"

"Enable Pathogen
execute pathogen#infect()

autocmd BufWritePre * :%s/\s\+$//e

"au BufRead,BufNewFile *.twig set filetype=htmljinja

"Set .swp directory
set backupdir=~/tmp/vim,/tmp,.
set directory=~/tmp/vim,/tmp


" Clear SignColumn background color
"highlight clear SignColumn

"set background=dark
"set background=dark
set background=dark
"Set default color scheme
"colorscheme mustang
"let g:solarized_termcolors=256
"colorscheme torte
"colorscheme solarized
colorscheme wombat
"colorscheme lucius
"hi Normal ctermbg=NONE

hi Normal guibg=NONE ctermbg=NONE
highlight NonText ctermbg=none

set colorcolumn=0
"highlight ColorColumn ctermbg=6
"highlight CursorLine term=bold cterm=bold guibg=Grey40

let g:fuf_file_exclude = '\vcache/'

map <A-S-o> :FufCoverageFile <CR>
map <F5> :e <CR>
map <F2> :NERDTreeToggle <CR>
map <Leader>h :bp <CR>
map <Leader>l :bn <CR>
map <Leader>j :tabNext <CR>
map <Leader>k :tabprevious <CR>

" close buffer without closing windows (bclose.vim)
map <Leader>w <Plug>Kwbd

nmap ]c <Plug>GitGutterNextHunk
nmap [c <Plug>GitGutterPrevHunk

com! FormatJSON %!python -m json.tool

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPLastMode'
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']

let g:airline#extensions#tabline#enabled = 1

"filetype plugin on
" Alternative: use the following to also enable language-dependent indenting.
"filetype plugin indent on

autocmd FileType php setlocal shiftwidth=4 tabstop=4 autoindent
