:set number
:set autoindent
:set ignorecase
:set mouse=v

syntax on

call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'lukas-reineke/indent-blankline.nvim'
call plug#end()
