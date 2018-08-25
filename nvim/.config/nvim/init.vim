inoremap jk <ESC> 
set splitright
set encoding=utf-8
set nu
set rnu
set shiftwidth=4
syntax enable
" Handicap
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Vundle Setup
set nocompatible
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

" Plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'Shougo/deoplete.nvim'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'francoiscabrol/ranger.vim'
Plugin 'zchee/deoplete-jedi'
Plugin 'vim-airline/vim-airline'
Plugin 'tmhedberg/SimpylFold'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'

source ~/.vimrc
" End Vundle Setup
call vundle#end()
filetype plugin indent on

" Docker Settings
" Comfy Settings
" Auto Pairs
inoremap { {}<left>
inoremap {{ {
inoremap {} {}
inoremap [ []<left>
inoremap [[ [
inoremap [] []
inoremap ( ()<left>
inoremap (( (
inoremap () ()
inoremap " ""<left>
inoremap "" ""
inoremap ' ''<left>
inoremap '' ''

" Tab Settings
nnoremap <A-Left> :tabprevious<CR>
nnoremap <A-Right> :tabnext<CR>

" Python Settings
let python_highlight_all=1
syntax on

"YAML Settings
"Indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Ranger Settings
let g:ranger_map_keys = 0

" Color Scheme
colorscheme zenburn

" doplete
let g:deoplete#enable_at_startup = 1

" Jedi
let g:python_host_prog = '/Users/orbs/.pyenv/versions/2.7.15/envs/neovim2/bin/python'
let g:python3_host_prog = '/Users/orbs/.pyenv/versions/3.6.5/envs/neovim3/bin/python'

" Quick edit rc
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>

" Vim SCRIPT The hardway settings
inoremap <c-d> <esc>ddi
" Airline settings
let g:airline#extensions#tabline#enabled = 1
" Test Deoplete
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}
nnoremap <leader>t :vsplit \| terminal<cr>
