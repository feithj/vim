" turn off auto adding comments on next line
" so you can cut and paste reliably
" http://vimdoc.sourceforge.net/htmldoc/change.html#fo-table
set fo=tcq
set nocompatible
set modeline
set bg=dark
set number    " turns on line numbers by default

"Adds pathogen which is in .vim/autoload
execute pathogen#infect()

" plugin for markdown
" Plugin 'godlygeek/tabular'
" Plugin 'plasticboy/vim-markdown'

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

" Enable indentation matching for =>'s
" filetype plugin indent on  --disabled going to use everything
filetype plugin on

" Searching setup
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" Code Folding .. makes it easier to travel the file
set foldenable          " Enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on ident level

