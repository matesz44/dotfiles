call plug#begin('~/.vim/plugged')

" Plugins
" autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Gruvbox theme
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" NerdTree
Plug 'preservim/nerdtree'
" Icons for NerdTree
Plug 'ryanoasis/vim-devicons'
" Comment multiple lines like a boss
Plug 'preservim/nerdcommenter'
" Live syntax check
Plug 'dense-analysis/ale'
" VimWiki
Plug 'vimwiki/vimwiki'
" CSS Colors
Plug 'ap/vim-css-color'
" Centertext
Plug 'junegunn/goyo.vim'
" Status line
Plug 'itchyny/lightline.vim'
" Paste copied img to markdown
Plug 'ferrine/md-img-paste.vim'

call plug#end()

set encoding=UTF-8
set noerrorbells
set novisualbell
nnoremap <C-L> :nohl<CR><C-L>

" Highlighting
syntax on

" History
set history=50

" Display
set ls=2
set showmode
set showcmd
set modeline
set ruler
set title
set nu rnu

" Line wrapping
set nowrap
set linebreak
set showbreak=+++

" Auto indent what you can
set autoindent

" Searching
set ignorecase
set smartcase
set gdefault
set hlsearch
set showmatch

" Enable jumping into files in a search buffer
set hidden 

" Make backspace a bit nicer
set backspace=eol,start,indent

" Indentation
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftround
set expandtab

" Disable mouse
set mouse=

" Toggle line-wrap
map <F6> <Esc>:set wrap!<CR>

" Base64 decode word under cursor
nmap <Leader>b :!echo <C-R><C-W> \| base64 -d<CR>

" Visual prompt for command completion
set wildmenu

" folding
set nofoldenable
set nocompatible


" coc.vim
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" coc config
let g:coc_global_extensions = [
    \ 'coc-prettier',
    \ ]

" plugin options
set background=dark  " gruvbox dark mode
colorscheme gruvbox
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nnoremap <C-p> :Files<CR>
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
" nmap <leader>p :Files<CR>
map <C-n> :NERDTreeToggle<CR>

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }
set noshowmode

autocmd FileType markdown nnoremap <buffer><silent> <C-i> :call mdip#MarkdownClipboardImage()<CR>
" nnoremap <C-p> :call mdip#MarkdownClipboardImage()<CR>


" ----------------
