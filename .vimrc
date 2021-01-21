syntax on

set nocompatible
filetype plugin on
set noerrorbells
set showmode
set nofixendofline
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu rnu
set nowrap
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set hlsearch
set smartcase
set ignorecase
nnoremap <C-L> :nohl<CR><C-L>
set showbreak=+++
set wildmenu
set statusline=%f%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]

" Coc needed
set hidden
set cmdheight=2
set updatetime=100
set shortmess+=c
"set signcolumn=yes
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
" Plug 'preservim/nerdtree'
" Plug 'vimwiki/vimwiki'
Plug 'dhulihan/vim-rfc'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'xavierd/clang_complete'
"Plug 'vim-pandoc/vim-pandoc'
"Plug 'vim-pandoc/vim-pandoc-syntax'

call plug#end()

let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_invert_selection='0'
colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let mapleader = " "
let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_liststyle = 3

let g:ctrlp_use_caching = 0

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
"nnoremap <Leader>tn :tabnew<SPACE>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <Leader>pf :Files<CR>
nnoremap <leader>f :Goyo<CR>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

map <F6> <Esc>:set wrap!<CR>
map <F7> <Esc>:set paste!<CR>
map <F8> <Esc>:!groff -ms % -Tpdf -k > /tmp/groff.pdf<CR>
map <F9> <Esc>:set list!<CR>

"nnoremap <C-j> :tabp<CR>
"nnoremap <C-k> :tabn<CR>

" Buffers
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr> 
"map gb :b<SPACE>
autocmd FileType markdown nnoremap <buffer><silent> <C-I> :call mdip#MarkdownClipboardImage()<CR>

" path to directory where library can be found
let g:clang_library_path='/usr/lib/llvm-9/lib'
" or path directly to the library file
let g:clang_library_path='/usr/lib/llvm-9/lib/libclang.so.1'


" --- COC ---
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" Use <c-space> to trigger completion.
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

" folding in notes
set foldmethod=marker
set cursorline
highlight subNote term=bold cterm=bold ctermbg=black ctermfg=blue
syntax match subNote /.*{{{/
syntax match subNote /}}}/

" calcurse md syntax highlighting
autocmd BufRead,BufNewFile /tmp/calcurse* set filetype=markdown
autocmd BufRead,BufNewFile ~/.calcurse/notes/* set filetype=markdown

" coc scroll popup
nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"

" show whitespaces (<F9> to show whitespaces)
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
