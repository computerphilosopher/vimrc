set nocompatible              " be iMproved, required
 
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
"Plugin 'ervandew/supertab'
Plugin 'tpope/vim-vividchalk'
Plugin 'raimondi/delimitmate'
Plugin 'valloric/youcompleteme'


call vundle#end()            " required
filetype plugin indent on    " required

colorscheme vividchalk

inoremap jk <ESC>
nnoremap <CR> o <ESC>

nnoremap <a-l> :NERDTreeToggle <CR>

nnoremap <F5> :w <CR> :!gcc -o %< % <CR> :!./%< <CR>
nnoremap <F4> :w <CR> :!python3 % <CR>
nnoremap <F7> :w <CR> :!g++ -std=c++11 -o %< % <CR> :!./%< <CR>

set autoindent
set smartindent
set autochdir

set expandtab
set tabstop=4 shiftwidth=4 softtabstop=4

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"set relativenumber
set nu
 

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:ycm_show_diagnostics_ui = 0
let g:syntastic_cpp_compiler_options = '-std=c++11'
vnoremap <C-c> y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe <CR> <CR>
"map <C-v> :r ~/.vimbuffer<CR>

