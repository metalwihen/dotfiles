" don't bother with vi compatibility
set nocompatible

" overide/Delete without copy (use x for cut)
nnoremap d "_d

" Don't copy the contents of an overwritten selection.
vnoremap p "_dP

" turn off error beep/flash
set visualbell t_vb=
" turn off visual bell
set novisualbell

" enable syntax highlighting
syntax enable

set autoindent
set autoread                                                 " reload files when changed on disk, i.e. via `git checkout`
set backspace=2                                              " Fix broken backspace in some setups
set backupcopy=yes                                           " see :help crontab
set clipboard=unnamed                                        " yank and paste with the system clipboard
set directory-=.                                             " don't store swapfiles in the current directory
set encoding=utf-8
set expandtab                                                " expand tabs to spaces
set ignorecase                                               " case-insensitive search
set incsearch                                                " search as you type
set laststatus=2                                             " always show statusline
set list                                                     " show trailing whitespace
set listchars=tab:▸\ ,trail:▫
set number                                                   " show line numbers
set ruler                                                    " show where you are
set scrolloff=3                                              " show context above/below cursorline
set shiftwidth=2                                             " normal mode indentation commands use 2 spaces
set showcmd
set smartcase                                                " case-sensitive search if any caps
set softtabstop=2                                            " insert mode tab and backspace use 2 spaces
set tabstop=2                                                " actual tabs occupy 8 characters
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu                                                 " show a navigable menu for tab completion
set wildmode=longest,list,full

" Enable basic mouse behavior such as resizing buffers.
set mouse=a

" ---- FIRST TIME INSTALL ---"

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" ---- PLUGINS ---- 
call plug#begin('~/.vim/plugged')
" file directory
Plug 'preservim/nerdtree'
" more syntax highlighting
Plug 'bfrg/vim-cpp-modern'
" fuzzy search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Preview pane 
Plug 'chengzeyi/fzf-preview.vim'
" git wrapper
Plug 'tpope/vim-fugitive'
" switch to header/cc files
Plug 'https://github.com/vim-scripts/a.vim'
" autocompelte
Plug 'mhinz/vim-signify'
" kotlin highlighting
Plug 'udalov/kotlin-vim'
" swift syntax
Plug 'keith/swift.vim'
" djinni syntax
Plug 'r0mai/vim-djinni'
call plug#end()

" ---- KEY MAPPING ----

" custom/keyboard shortcuts (active usage)
let mapleader = ';'

" custom/Home End PgUp PgDn
vmap H ^
vmap L $
vmap K <C-u>
vmap J <C-d>
nmap H ^
nmap L $
nmap K <C-u>
nmap J <C-d>

" custom/Window navigation
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <C-k> <C-w>k
nmap <C-j> <C-j>j

" custom/select all
vmap <C-a> ggVG
nmap <C-a> ggVG

" custom/copy-paste
vmap <C-c> y
vmap <C-v> p

" custom/redo
nmap U <C-r>
vmap U <C-r>

" custom/keyboard shortcuts (active plugins used)
nnoremap <leader>w <C-w>
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>dd :NERDTreeFind<CR>
nnoremap <leader>g :GFiles?<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>fg :GFiles<CR>
nnoremap <leader>ff :Rg!
nnoremap <leader>fb :Buffers<CR>

" plugin settings
let g:NERDSpaceDelims=1
let g:NERDTreeShowHidden=1

" ---- SYNTAX ---- 

" set markdown filetypes
autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
" set cpp filetypes
autocmd BufNewFile,BufFilePre,BufRead *.cc set filetype=cpp
" do not create swap file
autocmd FileType cpp setlocal shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType tex setlocal shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType lcm,proto,djinni setlocal shiftwidth=2 softtabstop=2 tabstop=2
" Make LCM file syntax highlighting be somewhat bearable
autocmd BufNewFile,BufRead *.lcm set filetype=cpp
" set wrap size for just programming files
autocmd FileType c,cpp,java,py set textwidth=100 " set hard wrap width
" set format options (default tcq) see http://vimdoc.sourceforge.net/htmldoc/change.html#fo-table

