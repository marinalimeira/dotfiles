call plug#begin('~/.vim/plugged')

Plug 'dracula/vim'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'godlygeek/tabular'
Plug 'easymotion/vim-easymotion'
"Plug 'justinmk/vim-dirvish'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" live markdown - use :LivedownToggle to launch/kill
Plug 'shime/vim-livedown'

" clojure plugins
Plug 'guns/vim-sexp', { 'for': 'clojure' }
Plug 'clojure-vim/acid.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'fholiveira/vim-clojure-static', { 'for': 'clojure', 'branch': 'hack-update'} " Static stuff
Plug 'hkupty/async-clj-highlight', { 'for': 'clojure', 'branch': 'acid-autocmd' } " Highlight with acid
Plug 'fuadsaud/vim-midje', { 'branch': 'fix-lispwords' }
Plug 'clojure-vim/async-clj-omni'

" https://github.com/junegunn/fzf#as-vim-plugin
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'Shougo/deoplete.nvim'

" JS highlighting and indent support. Sometimes buggy, but has support for
" " jsdocs and flow
Plug 'pangloss/vim-javascript', { 'for': ['javascript']}

"Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

"buffer files
Plug 'Shougo/denite.nvim'

Plug 'Shougo/echodoc.vim'
call plug#end()

set autoread
set number
color dracula
set tabstop=2
set shiftwidth=2
set expandtab
set backupdir=~/.vim/backup/
set directory=~/.vim/backup/
set cursorline

set hidden
set mouse=a

" turn on syntax highlighting
syntax on
" highlight to vim-clojure-static
filetype plugin indent on

" Turn off swap and backup files
set noswapfile
set nobackup
set nowb

" Indentation
set autoindent
set smartindent
set smartcase

" Disabling arrow keys
noremap <Left> :echoe "Use h"<CR>
noremap <Right> :echoe "Use l"<CR>
noremap <Up> :echoe "Use k"<CR>
noremap <Down> :echoe "Use j"<CR>

" Share the clipboard outside of macvim
set clipboard=unnamed

" Auto format any pasted text
nnoremap P P=`]
nnoremap p p=`]

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:· 

" Highlight search results
set hlsearch

" NerdTree keymaps
nmap <silent> <Leader>p :NERDTreeToggle<CR>
nmap <silent> <Leader>l :NERDTreeFind<CR>

" Easymotion
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" livedown setup
let g:livedown_browser = "firefoxNightly"

" Disable bloated stuff that is on by default.
let g:loaded_2html_plugin = 1
let g:loaded_gzip = 1
let g:loaded_tarPlugin = 1 " May cause problems with fireplace
let g:loaded_zipPlugin = 1
let g:loaded_netrwPlugin = 1

command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

nmap <silent> <Leader>f :Files<CR>

" Enable deoplete at startup
let g:deoplete#enable_at_startup = 1

"deoplete async-clj-omni config
let g:deoplete#keyword_patterns = {}
let g:deoplete#keyword_patterns.clojure = '[\w!$%&*+/:<=>?@\^_~\-\.#]*'

