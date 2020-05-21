call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'APZelos/blamer.nvim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'plasticboy/vim-markdown'
Plug 'vim-jp/vim-cpp'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'mbbill/undotree'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'Valloric/YouCompleteMe'
Plug 'matze/vim-meson'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" General Config
set expandtab
set shiftwidth=4
set tabstop=4
set list
set cursorline
set number
set nofixendofline
"set spell spelllang=en_us

" nerdtree
map <silent> <C-n> :NERDTreeToggle<CR>

" Colorscheme
colorscheme dracula

" vim-markdown
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_folding_disabled = 1

" undotree
map <silent> <C-u> :UndotreeToggle<CR>

" blamer
let g:blamer_enabled = 1

" rainbow_parentheses
au VimEnter * RainbowParentheses

" neoformat
let g:neoformat_enabled_cpp = ['clang-format']

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '/home/hannes/.config/nvim/ycm_extra_conf.py'
set completeopt-=preview

" fzf
let g:fzf_preview_window = ''
let g:fzf_buffers_jump = 1
map <silent> <C-p> :GFiles<CR>
