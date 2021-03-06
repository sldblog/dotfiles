" Vundle boilerplate
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'              " Lean & mean status/tabline for vim
Plugin 'rhysd/committia.vim'            " A Vim plugin for more pleasant editing on commit messages
Plugin 'tpope/vim-fugitive'             " fugitive.vim: a Git wrapper so awesome, it should be illegal
Plugin 'rking/ag.vim'                   " Vim plugin for the_silver_searcher, 'ag'
Plugin 'tpope/vim-rails.git'            " rails.vim: Ruby on Rails power tools
Plugin 'scrooloose/nerdtree.git'        " A tree explorer plugin for vim
Plugin 'ctrlpvim/ctrlp.vim'             " Active fork of kien/ctrlp.vim—Fuzzy file, buffer, mru, tag, etc finder
Plugin 'kien/rainbow_parentheses.vim'   " Better Rainbow Parentheses
Plugin 'guns/vim-clojure-static'        " Meikel Brandmeyer's excellent Clojure runtime files
Plugin 'majutsushi/tagbar'              " Vim plugin that displays tags in a window, ordered by scope
call vundle#end()            " required
filetype plugin indent on    " required

" Custom
set expandtab
set shiftwidth=2
set softtabstop=2

syntax on
set nu

set ruler
set laststatus=2
set backspace=indent,eol,start
set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-N><C-N> :<C-U>NERDTree<CR>
nnoremap <C-N><C-F> :<C-U>NERDTreeFind<CR>

let g:airline_powerline_fonts = 1
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods'
    \ ]
\ }

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l -i --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
nmap <F8> :TagbarToggle<CR>

autocmd VimEnter *       RainbowParenthesesToggle
autocmd Syntax   clojure RainbowParenthesesLoadRound
autocmd Syntax   clojure RainbowParenthesesLoadSquare
autocmd Syntax   clojure RainbowParenthesesLoadBraces
