syntax on
set nu
set rnu
set ts=4
set ai
set sw=4
set ss=4
set smarttab
set expandtab
set smartcase
set tags=tags
set t_Co=256
set encoding=utf-8
let g:airline_powerline_fonts = 1
"hi Normal guibg=NONE ctermbg=NONE

call plug#begin('~/vimfiles/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" ... etc
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'mbbill/undotree'
"Plug 'sainnhe/gruvbox-material'

call plug#end()

if executable('rg')
    let g:rg_derive_root='true'
endif

let loaded_matchparen = 1
let mapleader = " "




let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_localrmdir='rm -r'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%/.git ls-files -oc --exclude-standard']

nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
" greatest remap ever
vnoremap <leader>p "_dP

" next greatest remap ever : asbjornHaland
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

" vim TODO
nmap <Leader>tu <Plug>BujoChecknormal
nmap <Leader>th <Plug>BujoAddnormal
let g:bujo#todo_file_path = $HOME . "/.cache/bujo"

"let g:ycm_global_ycm_extra_conf = '.vim/bundle/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

nnoremap <Leader>ww ofunction wait(ms: number): Promise<void> {<CR>return new Promise(res => setTimeout(res, ms));<CR>}<esc>k=i{<CR>

" Vim with me
nnoremap <leader>vwm :call ColorMyPencils()<CR>


nmap <leader>y ggVG"+y''
nmap <leader>a ggVG
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
highlight ColorColumn ctermbg=0 guibg=lightgray
set colorcolumn=80
colorscheme gruvbox 
set background=dark
" transparent bg
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
" For Vim<8, replace EndOfBuffer by NonText
autocmd vimenter * hi EndOfBuffer guibg=NONE ctermbg=NONE

hi StatusLine ctermbg=0 cterm=NONE
"This depends of course on your general background. What also works is to set a highlight-format:

hi StatusLine ctermbg=none cterm=bold

set undodir=~/.vim/undodir
set undofile
set incsearch
autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -Wall -Wno-unused-result -std=c++17 -O2 -DLOCAL % -o %:r && ./%:r <CR>
autocmd filetype java nnoremap <F5> :w <bar> !javac % && java -enableassertions %:r <CR>
autocmd filetype python nnoremap <F5> :w <bar> !python % <CR>
autocmd filetype perl nnoremap <F5> :w <bar> !perl % <CR>
autocmd filetype go nnoremap <F5> :w <bar> !go build % && ./%:r <CR>
autocmd BufNewFile *.cpp 0r ~/.vim/t/a.cpp
autocmd BufNewFile *.java 0r ~/.vim/t/a.java
autocmd BufNewFile *.py 0r ~/.vim/t/A.py

