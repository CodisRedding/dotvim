call pathogen#infect()
call pathogen#helptags()

" General stuff

set nocompatible
syntax on
filetype on
filetype plugin on
set ofu=syntaxcomplete#Complete


set background=dark
set t_Co=256
color mango

set ruler
set noerrorbells
set nostartofline

" User interface

set laststatus=2
set ruler
match ErrorMsg '\%>80v.\+'

" Text Formatting

" don't make it look like there are line breaks where there aren't:
set nowrap

" use indents of 2 spaces, and have them copied down lines:
set tabstop=5
set shiftwidth=5
set softtabstop=5
set shiftround
set noexpandtab
set autoindent
set nosi

" search and replace stuff
set ignorecase
set smartcase
set hlsearch

highlight Search ctermfg=Black ctermbg=Red cterm=NONE

set encoding=utf-8
set fileencoding=utf-8
set backspace=2

set tw=0

set backupdir=~/.bak
set directory=~/.swp

autocmd FileType python set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
autocmd FileType c set tabstop=3 shiftwidth=3
autocmd FileType cpp set tabstop=3 shiftwidth=3
autocmd FileType sql set tabstop=3 shiftwidth=3 nowrap
autocmd FileType xml set tabstop=4 shiftwidth=4 softtabstop=4 nowrap
autocmd FileType coffee set tabstop=2 shiftwidth=2 softtabstop=2 nowrap expandtab
autocmd FileType html set nowrap
autocmd BufRead,BufNewFile *.txt set tabstop=5 shiftwidth=5 wrap
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

au BufWritePre * set binary noeol
au BufWritePost * set nobinary eol
"au BufEnter *.py,*.cpp,*.c,*.h exec 'match Todo /\%>80v.\+/'
au BufEnter *.cls set syntax=apex tabstop=4 shiftwidth=4 softtabstop=4 nowrap filetype=apex
"au BufEnter *.cls exec 'match Todo /\%>80v.\+/'
au BufEnter *.trigger set syntax=apex tabstop=4 shiftwidth=4 softtabstop=4 nowrap filetype=apex
"au BufEnter *.trigger exec 'match Todo /\%>80v.\+/'
au BufEnter *.page set tabstop=4 shiftwidth=4 softtabstop=4 nowrap
au BufWritePre *.snippet set binary eol
au BufWritePost *.snippet set binary eol

if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

command TrailingWhitespace %s/\s\+$//

let g:snippets_dir = '~/.vim/snippets,~/.vim/my_snippets'
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
nnoremap <F3> :set hlsearch!<CR>
nnoremap <F6> :set list!<bar>set list?<cr>
nnoremap <F7> :set foldmethod=indent<cr>

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" autocmd vimenter * NERDTree
map <C-c> :NERDTreeToggle<CR>
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <C-n> :tabnew<CR>