let $VISUAL      = 'nvr -cc split --remote-wait +"setlocal bufhidden=delete"'
let $GIT_EDITOR  = 'nvr -cc split --remote-wait +"setlocal bufhidden=delete"'
let $EDITOR      = 'nvr -l'
let $ECTO_EDITOR = 'nvr -l'

call plug#begin('~/.config/nvim/plugged')
	" Visual
	Plug 'dracula/vim',{'as':'dracula'}
	Plug 'vim-airline/vim-airline'
	Plug 'airblade/vim-gitgutter'
	Plug 'psliwka/vim-smoothie'

	" Functionality
	Plug 'mhinz/vim-startify'
	Plug 'scrooloose/nerdtree'
	Plug 'tpope/vim-fugitive'
	Plug 'junegunn/fzf.vim'
    Plug 'kassio/neoterm'
        
	" File Manager extensions
	Plug 'tsony-tsonev/nerdtree-git-plugin'
	Plug 'ryanoasis/vim-devicons'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

	" Language Support
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'sheerun/vim-polyglot'
	Plug 'vim-pandoc/vim-pandoc'
	Plug 'vim-pandoc/vim-pandoc-syntax'
	Plug 'masukomi/vim-markdown-folding'

	" Productivity
	Plug 'tpope/vim-repeat'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-commentary'
	Plug 'vim-scripts/ReplaceWithRegister'

	Plug 'michaeljsmith/vim-indent-object'
	Plug 'kana/vim-textobj-user'
	Plug 'kana/vim-textobj-entire'
	Plug 'kana/vim-textobj-line'
call plug#end()

filetype plugin indent on
syntax on
set encoding=UTF-8
set autoread
set wildmenu
set spell
set noruler
set colorcolumn=81
set autoindent
set smartindent
set inccommand=nosplit
set nowrap
set expandtab
set autowrite
set ignorecase
set smartcase
set magic
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number relativenumber
set lazyredraw
set termguicolors
set noshowmode
set showcmd
set cursorline
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
	\,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
	\,sm:block-blinkwait175-blinkoff150-blinkon175

nnoremap <Up> :resize +2<CR>
nnoremap <Down> :resize -2<CR>
nnoremap <Left> :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-n> :NERDTreeToggle<CR>
nmap <C-p> :FZF<CR>
nmap ; :Buffers<CR>
nmap <Leader>t :Tags<cr>

" Terminal
tnoremap <Esc> <C-\><C-n><Esc><CR>
nnoremap <silent> <leader>o :vertical botright Ttoggle<CR><C-w>l
nnoremap <silent> <leader>O :vertical botright Ttoggle<CR><C-w>l<C-W>J
nnoremap <silent> <leader><space> :vertical botright Ttoggle<CR><C-w>l
tnoremap <silent> <leader><space> <C-\><C-n>:Ttoggle<CR>

nnoremap <silent> <C-t>l :TREPLSendLine<CR>
vnoremap <silent> <C-t>s :TREPLSendSelection<CR>

" Fast replace
nnoremap <leader>k :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>
vnoremap <leader>k y :%s/<C-r>"//gc<Left><Left><Left>

" Display

let g:markdown_fenced_languages=[
        \ 'html',
        \ 'elm',
        \ 'vim',
        \ 'js=javascript',
        \ 'json',
        \ 'python',
        \ 'ruby',
        \ 'elixir',
        \ 'sql',
        \ 'bash=sh'
\ ]

let g:sh_fold_enabled=1

" Visual
colorscheme dracula

highlight ColorColumn ctermbg=236 guibg=#252733

let g:ackprg='ag --vimgrep'

source ~/.config/nvim/coc.vim
source ~/.config/nvim/nerdtree.vim
source ~/.config/nvim/devicons.vim
source ~/.config/nvim/airline.vim
source ~/.config/nvim/gitgutter.vim
