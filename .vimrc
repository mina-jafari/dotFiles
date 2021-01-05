"set foldlevel=99
set nu
colorscheme desert
"filetype on
set autoindent            " auto-indent
set tabstop=4             " tab spacing
set softtabstop=4         " unify
set shiftwidth=4          " indent/outdent by 4 columns
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs
"set smarttab              " use tabs at the start of a line, spaces elsewhere
set wrap                  " don't wrap text
"set textwidth=80

"Highlight characters that go over 80 columns
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

"Show a warning color for columns 77-80 and error color for over 80 chars.
"au BufWinEnter * let w:m1=matchadd('Search', '\%<81v.\%>77v', -1) 
"au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1) 

"execute pathogen#infect()

set t_Co=256              " enable 256-color mode.
syntax enable             " enable syntax highlighting (previously syntax on).
"filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]
set mouse=a
"copy to clipboard
set clipboard=unnamed
execute pathogen#infect()


"This unsets the last search pattern register by hitting return
nnoremap <CR> :noh<CR><CR>

"To disable jumps after # and *
nnoremap * :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
nnoremap # :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

" To igonere whatespaces in diff
set diffopt+=iwhite

" Vundle plugin
set nocompatible              " required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set modeline
