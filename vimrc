" allow MacVim to use the system clipboard
set clipboard=unnamed
" don't bother maintaining compatability with legacy vi
set nocompatible
" load plugins and local settings particular to filetype

color desert

" enable syntax highlighting
syntax on
" enable filetype plugins
filetype plugin on
" display filename in terminal window
set titlestring=%f title
" display the current column/line at bottom right
set ruf=%l:%c ruler
" use unicode
set encoding=utf-8
set fileencodings=utf-8
" wrap lines on space

" four space tabs
set tabstop=4 shiftwidth=4
" use spaces, not tab stops
set expandtab
" wrap text and automatically break lines
set wrap linebreak
set formatoptions=qrn1
" highlight the 121st first column...
set cc=121
" ...in a dark grey
highlight ColorColumn ctermbg=0
" use a dark grey background for search and visual highlight
highlight visual ctermbg=0
highlight search ctermbg=0
" change the diff highlighting
highlight DiffAdd    cterm=bold ctermfg=0  ctermbg=2
highlight DiffDelete cterm=bold ctermfg=0  ctermbg=9
highlight DiffChange cterm=bold ctermfg=0  ctermbg=11
highlight DiffText   cterm=bold ctermfg=0  ctermbg=5
" show line numbers
set nu

" map leader key to comma
let mapleader = ","

" highlight search matches
set hlsearch
" clear out a search by typing leader, space
nnoremap <leader><space> :noh<cr>
" use incremental searching
set incsearch
" ignore case on searching...
set ignorecase
" ... unless search term contains uppercase letter
set smartcase
" use Perl reg ex matching
nnoremap / /\v
vnoremap / /\v

" use tab key to move between bracket pairs
nnoremap <tab> %
vnoremap <tab> %
" use jj to escape from insert mode
inoremap jj <ESC>
" use ,n to split window vertically and shift focus to new window
nnoremap <leader>n :vsp<CR><c-w>l

" use html syntax highlighting for .twig files
au BufRead,BufNewFile *.twig set filetype=html
