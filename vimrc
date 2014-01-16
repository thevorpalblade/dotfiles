

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" The bundles you install will be listed here

"Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'bling/vim-airline'

"Theme base16
Bundle 'chriskempson/base16-vim'

"Nerdtree
Bundle 'scrooloose/nerdtree'

"PythonMode
Bundle 'klen/python-mode'

"Jedi-vim
Bundle 'davidhalter/jedi-vim'

"Molokai
Bundle 'tomasr/molokai'

filetype plugin indent on

" The rest of your config follows here



"  airline setup
set guifont=Teminess\ Powerline\ 10
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


"augroup vimrc_autocmds
"    autocmd!
"    " highlight characters past column 80
"    autocmd FileType python highlight Excess ctermbg=Pink guibg=Black
"    autocmd FileType python match Excess /\%80v.*/
"    autocmd FileType python set nowrap
"augroup END

syntax on

set autoindent
set autowrite


set backspace=2 " make backspace work like most other apps

set notextmode
set notextauto
set hlsearch
set incsearch

set tabstop=4
set shiftwidth=4
set expandtab

"colorscheme delek
"colorscheme base16-default
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1
set background=dark


"Some hints from this talk: https://www.youtube.com/watch?v=YhqsjUUHj6g
"block remains selected after indent
vnoremap < <gv
vnoremap > >gv

set number
set tw=80

set colorcolumn=80
highlight ColorColumn ctermbg=DarkMagenta

" Python-mode
" Activate rope
" Keys:
" K             Show python docs
"   Rope autocomplete
" g     Rope goto definition
" d     Rope show documentation
" f     Rope find occurrences
" b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 0 

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = 'b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

