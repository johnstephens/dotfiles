""  ------------------------
""  #BASE
""  ------------------------

set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

"" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif
"" Quickopen vimrc
nmap <leader>v :tabedit $MYVIMRC<CR>





""  ------------------------
""  #WHITESPACE
""  ------------------------

set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode





""  ------------------------
""  #APPEARANCE
""  ------------------------

colorscheme molokai             " Set color scheme
" set columns=84
set foldcolumn=12
set colorcolumn=80
" autocmd VimResized * if (&columns > 84) | set columns=84 | endif
set wrap                        " Wrap lines
set linebreak
set showbreak=…
" set textwidth=72                " Document width
" set formatoptions=qrn1          " Do not know
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/
set guifont=Monaco:h14          " Set display font
set list
set nu                          " Add line numbers
set listchars=tab:▸\ ,eol:¬     " Display tabs and line endings like a Mac
set listchars+=trail:·          " Show trailing spaces as dots





""  ------------------------
""  #SEARCHING
""  ------------------------

set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter





""  ------------------------
""  #FILETYPES
""  ------------------------

au BufNewFile,BufRead *.txp set filetype=html





""  ------------------------
""  #MAPPINGS
""  ------------------------

"" Use Vim motions: Disable mouse and arrow keys
set mouse=
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
nnoremap <Left>  <NOP>
nnoremap <Right> <NOP>
nnoremap <Up>    <NOP>
nnoremap <Down>  <NOP>

"" Use spacebar to center current line in editor
nmap <space> zz

"" Automatically center search results in editor

nmap n nzz
nmap N Nzz

"" Let me use semicolon to enter command mode
nnoremap ; :

"" Use comma as <leader> key instead of backslash
let mapleader = ","

"" Close open XML tags using ,.
imap <leader>. </<C-X><C-O>

"" Type ,, to alternate between files
nnoremap <leader><leader> <c-^>





""  ------------------------
""  #PLUGINS
""  ------------------------

execute pathogen#infect()





""  ------------------------
""  #VMATH
""  ------------------------

vmap <expr>  ++  VMATH_YankAndAnalyse()
nmap         ++  vip++





""  ------------------------
""  #SYNTASTIC
""  ------------------------

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_js_checkers=[ 'jshint' ]
let g:syntastic_sass_checkers=[ 'sass', 'sassc' ]





""  ------------------------
""  #AIRLINE
""  ------------------------

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
