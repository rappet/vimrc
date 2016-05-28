set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=utf-8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set number
set relativenumber
set tabstop=2
set shiftwidth=2
set expandtab

set listchars=tab:\ \ ,trail:\ 
set list

" call vundle#begin()
colorscheme evening
" set mouse=a
map <F2> :tabnew<CR>
map <F3> :tabp<CR>
map <F4> :tabn<CR>
"map <F5> :NERDTreeToggle<CR>

"let g:neocomplete#enable_at_startup = 1

" Frage ignorieren
"let g:ycm_confirm_extra_conf = 0

" set foldmethod=manual
" Code-Folding mit <F9>
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" Plugin 'VundleVim/Vundle.vim'
" Plugin 'fatih/vim-go'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'rdnetto/YCM-Generator'
" Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
" call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
