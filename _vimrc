
set nowrap
set winheight=100

if has("gui_running")
    set cursorline          " highlight cursor line.
endif

colorscheme default

" ------------------------------------------------------------------------------
" Tabs and spaces and indentation.
" ------------------------------------------------------------------------------

set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
filetype plugin indent on

" ------------------------------------------------------------------------------
" Key mappings only work in GUI mode.
" ------------------------------------------------------------------------------

map         <C-S>           :w<CR>
imap        <C-S>           <Esc>:w<CR>

nnoremap    <Space>         <PageDown>
nnoremap    <S-Space>       <PageUp>

map         <C-O><C-O>      :split 
imap        <C-O><C-O>      <ESC>:split 

noremap     <C-J>           <C-W>j<C-W>_      " up
noremap     <C-K>           <C-W>k<C-W>_      " down
noremap     <C-H>           <C-W>h<C-W>_      " left
noremap     <C-L>           <C-W>l<C-W>_      " right

" ------------------------------------------------------------------------------
" Use only the best programmer fonts.
" ------------------------------------------------------------------------------

set guifont=monaco
"set guifont=monaco:h8:w6:cANSI

" ------------------------------------------------------------------------------
" Search related settings.
" ------------------------------------------------------------------------------

set hlsearch
set incsearch
set ignorecase
set smartcase

nnoremap <silent> _ :nohl<CR>

" ------------------------------------------------------------------------------
" Turn off all menus. Note that some plugins will still create menus.
" ------------------------------------------------------------------------------

:aunmenu *

" ------------------------------------------------------------------------------
" Change leader character to ','
" ------------------------------------------------------------------------------
let mapleader = ","
let g:mapleader = ","

" ------------------------------------------------------------------------------
" Quicker edit/reload of vimrc
" ------------------------------------------------------------------------------

nmap <leader>v :tabnew ~/.vimrc<CR>
autocmd! bufwritepost .vimrc source ~/.vimrc

" ------------------------------------------------------------------------------
" Tab navigation.
" ------------------------------------------------------------------------------

map <leader>tn :tabnext<cr>

" ------------------------------------------------------------------------------
" Change to directory of the buffer you are in.
" ------------------------------------------------------------------------------

autocmd bufenter,bufread * :cd %:p:h

" ------------------------------------------------------------------------------
" Always reload externally modified files.
" ------------------------------------------------------------------------------

set autoread
