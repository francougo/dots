" vim-latex recommended settings
filetype plugin on
filetype indent on
let g:tex_flavor='latex'

" vim-latex config
let g:Tex_CustomTemplateDirectory='/home/franco/LaTex/templates/'
let g:Tex_ViewRule_pdf='zathura'

" disable all folding
let g:Tex_FoldedSections=""
let g:Tex_FoldedEnvironments=""
let g:Tex_FoldedMisc=""

command! -nargs=1 Wro w !sudo tee <args> 
"write to <args> file when on read only mode (:Wro foo.txt :Wro %)

syntax on
filetype on

set background=dark
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
colorscheme slate
set nohlsearch

set scroll=10

set number

filetype indent on 

set lazyredraw

set wildmenu

set showmatch

set incsearch

let mapleader = ","

vnoremap <leader>y "+y
nnoremap <leader>p "+p
nnoremap <leader>o "*p
"yanks and pastes to and from the clipboard register

nnoremap <leader>ev :vsp ~/.vimrc<cr>
"opens vimrc in a vertical split

nnoremap <leader>sv :so ~/.vimrc<cr>
"sources vimrc so any saved changes have effect on the current buffer

noremap <leader>t :sh<cr>

nnoremap <leader>u viw~

noremap <leader>w <c-w><c-w>

nnoremap <leader>b :bnext<cr>
"Cambio rapido al siguiente buffer

inoremap <C-e> <C-C>"+pa
"Permite pegar contenido del registro + en insert mode
noremap <C-n> :tabn<cr>
noremap <C-m> :tabp<cr>
"Para moverse entre tabs
