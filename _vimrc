

" ------------------------------------------------------------------------------
" All my plugins are saved in git repo which lives at ~/git/vim locally.
" ------------------------------------------------------------------------------

:set runtimepath+=~/git/vim/multiplesearch
:set runtimepath+=~/git/vim/nerdtree

" ------------------------------------------------------------------------------
" Miscellaneous.
" ------------------------------------------------------------------------------

set nowrap
set winheight=100
syntax enable               " doesn't seem to do anything.
colorscheme default

if has("gui_running")
    set cursorline          " highlight cursor line.
    set guioptions +=a      " automatically copy visual selection clipboard.
                            " doesn't seem to work.
endif

" ------------------------------------------------------------------------------
" Do not create backup or swap files.
" ------------------------------------------------------------------------------

set nobackup
set nowritebackup
set noswapfile

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

" Search current visual selection.
vmap S y/<C-R>=escape(@",'/\')<CR>

" ------------------------------------------------------------------------------
" Turn off all menus and toolbars. Note that some plugins will still create menus.
" ------------------------------------------------------------------------------

:aunmenu *
if has("gui_running")
    set guioptions -=T
endif

" ------------------------------------------------------------------------------
" Change leader character to ','
" ------------------------------------------------------------------------------
let mapleader = ","
let g:mapleader = ","

" ------------------------------------------------------------------------------
" Quicker edit/reload of vimrc
" ------------------------------------------------------------------------------

nmap <leader>v :tabnew ~/git/vim/_vimrc<CR>
autocmd! bufwritepost _vimrc source ~/.vimrc

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

" ------------------------------------------------------------------------------
" Remember a lot of commands and edits.
" ------------------------------------------------------------------------------

set history     =1000
set undolevels  =1000

" ------------------------------------------------------------------------------
" Customize plugin - MultipleSearch
" ------------------------------------------------------------------------------

:nmap <leader>/  :Search 
:nmap <leader>r  :SearchReset<CR>

" ------------------------------------------------------------------------------
" Customize plugin - NerdTree
" ------------------------------------------------------------------------------

:nmap <leader>n :NERDTreeToggle<CR>

