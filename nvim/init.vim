set laststatus=0 ruler
set number
set relativenumber
set tabstop=3
set softtabstop=3
set shiftwidth=3
set autoindent
set expandtab
set smartindent
set hidden
set noerrorbells
set smartcase
set ignorecase
set incsearch
set scrolloff=9
set noshowmode

cabb W w
cabb Q q

nnoremap <esc> :noh<return><esc>
nnoremap <i>   :noh<return>
nnoremap <F3>  :set number! relativenumber!<Enter>
nnoremap <F4>  :set list!<Enter>
nnoremap <C-O> :vertical split<Enter>
nnoremap <C-L> :split<Enter>
nnoremap <C-W> :set nuw=21<Enter>
nnoremap <C-E> :set nuw=6<Enter>
vnoremap <C-S> :s/^/# /<Enter>
vnoremap <C-R> :s/../<Enter>
