" plugin installation {{{
call plug#begin()

" adding COOL SHIT!!! {{{
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'simnalamburt/vim-mundo'
Plug 'SirVer/ultisnips'
" }}}

" move around WITH STYLE {{{
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-repeat'
Plug 'easymotion/vim-easymotion'
" }}}

" extra language support {{{
Plug 'ziglang/zig.vim'
Plug 'jceb/vim-orgmode'
" }}}

call plug#end()
" }}}

" global settings {{{
set colorcolumn=80
set foldlevelstart=0

" undo files {{{
set undofile
set undolevels=10000
" }}}

" leader {{{
let mapleader = "-"
let maplocalleader = "\\"
" }}}

" statusline {{{
set statusline=%.20f " file path
set statusline+=\ %y " filetype
set statusline+=\ %m
set statusline+=\ %4l/%L " current line
" }}}
" }}}

" custom mappings {{{
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>f :Files<cr>
nnoremap <leader>m :Man<space>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>u :MundoToggle<cr>

inoremap <C-BS> <C-W>
inoremap <M-BS> <C-W>
" }}}

" plugin config {{{
let g:EasyMotion_keys = 'aoeuidhtns-'

let g:UltiSnipsEditSplit = "vertical"
" }}}

" autocommands {{{
" vimscript {{{
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
" text {{{
augroup filetype_text
	autocmd!
	autocmd FileType text setlocal textwidth=80
" }}}
" }}}
