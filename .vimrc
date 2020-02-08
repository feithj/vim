" Ohh boy to many settings in here... my memory is slipping!!!

set fo=tcq
set nocompatible
set modeline
set bg=dark
set number    " turns on line numbers by default
set relativenumber " turns on relative numbers by default

" Adds pathogen which is in .vim/autoload
execute pathogen#infect()
set nocompatible              " be iMproved, required


"filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin for markdown
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'

syntax on

" set default comment color to cyan instead of darkblue
" which is not very legible on a black background
highlight comment ctermfg=cyan

set tabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2

highlight LiteralTabs ctermbg=darkgreen guibg=darkgreen
match LiteralTabs /\s\	/
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$/

" Show me a ruler
set ruler

" Set up puppet manifest and spec options
au BufRead,BufNewFile *.pp
  \ set filetype=puppet
au BufRead,BufNewFile *_spec.rb
  \ nmap <F8> :!rspec --color %<CR>

" Setup identation for python
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
" python setup for templates:
if has("autocmd")
  augroup templates
    autocmd BufNewFile *.py 0r ~/.vim/templates/python.templates
  augroup END
endif
let g:username = 'Jesse Feith'
let g:templates_no_autocmd = 0

" Python Templates - Creates a buffer hotkey to use as a template
:imap <buffer> \pwhile <C-O>mzwhile [ $$$ ]; do<CR>  $$$<CR>done<CR><C-O>'z;;
:imap <buffer> \pcfr <C-O>mz#--------------------------------------------------------------------<CR>#  $$$ <CR>#--------------------------------------------------------------------<CR><C-O>'z;;

" Sets your place Holder to the $$$ if you use the hotkey ;;
:imap <buffer> ;; <C-O>/$$$<CR><C-O>c3l
:nmap <buffer> ;; /$$$<CR>c3l

" Template variables
let g:tmpl_author_email = 'john.doe@example.com'
let g:tmpl_author_name = 'Jesse Feith'

" To be used with the python template that I have created.
" uses the exapnd funtion to display file name. in vi ":h expand" to see all variables
autocmd bufnewfile *.py exe "1," . 20 . "g/FILE:/s//FILE: " expand("%")
" Adds hostname to new file if HOSTNAME is in first 20 lines
autocmd bufnewfile *.py exe "1," . 20 . "g/HOSTNAME:/s//HOSTNAME:" system("hostname")
"This replaces anything from line 1 to 20 with CREATED: to CREATED: and the time it was created
autocmd bufnewfile *.py exe "1," . 20 . "g/CREATED:/s//CREATED: " .strftime("%c")

" Enable indentation matching for =>'s
" filetype plugin indent on  --disabled going to use everything
filetype plugin on

" Nerdtree look alike
"let g:netrw_banner = 0
"let g:netrw_liststyle = 3
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1
"let g:netrw_winsize = 25
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END

