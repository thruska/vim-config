" Hide buffers instead of closing them when switching to another buffer.
" This allows to maintain the undo history.
set hidden

set backspace=indent,eol,start
                    " allow backspacing over everything in insert mode

"set copyindent    " copy the previous indentation on autoindenting

set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise

set incsearch     " show search matches as you type

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo

set tabstop=4
set shiftwidth=4
set expandtab
set number

set pastetoggle=<F2>
nnoremap ; :
nmap <silent> ,/ :nohlsearch<CR>


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
map <F3> :NERDTreeFind <CR>
map <Leader>h :bp <CR>
map <Leader>l :bn <CR>
map <Leader>j :tabNext <CR>
map <Leader>k :tabprevious <CR>
map <Leader>g :Gstatus <CR>
map <Leader>c :Gcommit <CR>
map <Leader>d :Gdiff <CR>
map <Leader>s :w <CR>
nnoremap <F5> :buffers<CR>:buffer<Space>

" close buffer without closing windows (bclose.vim)
map <Leader>w <Plug>Kwbd

nmap ]c <Plug>GitGutterNextHunk
nmap [c <Plug>GitGutterPrevHunk
map [q :cprev <CR>
map ]q :cnext <CR>
map [Q :cfirst <CR>
map [Q :clast <CR>

com! FormatJSON %!python -m json.tool

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPLastMode'
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']

let g:airline#extensions#tabline#enabled = 1

"filetype plugin on
" Alternative: use the following to also enable language-dependent indenting.
"filetype plugin indent on

autocmd FileType php setlocal shiftwidth=4 tabstop=4 autoindent
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 autoindent


set statusline+=%{exists('g:loaded_fugitive')?fugitive#statusline():''}

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee /dev/null %
