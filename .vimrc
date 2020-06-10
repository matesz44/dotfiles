syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu rnu
set nowrap
set smartcase
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set hlsearch
nnoremap <C-L> :nohl<CR><C-L>
set showbreak=+++

" Coc needed
set hidden
set cmdheight=2
set updatetime=100
set shortmess+=c
"

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'gruvbox-community/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ferrine/md-img-paste.vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'mbbill/undotree'
Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/goyo.vim'

call plug#end()

let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let mapleader = " "
let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <Leader>tn :tabnew<SPACE>
nnoremap <C-p> :GFiles<CR>
nnoremap <Leader>pf :Files<CR>
nnoremap <leader>f :Goyo<CR>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

map <F6> <Esc>:set wrap!<CR>
nmap <Leader>b :!echo <C-R><C-W> \| base64 -d<CR>

nnoremap <C-j> :tabp<CR>
nnoremap <C-k> :tabn<CR>

autocmd FileType markdown nnoremap <buffer><silent> <C-I> :call mdip#MarkdownClipboardImage()<CR>

" --- COC ---
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <c-space> coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nnoremap <leader>cr :CocRestart
