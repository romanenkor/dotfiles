let $VISUAL      = 'nvr -cc split --remote-wait +"setlocal bufhidden=delete"'
let $GIT_EDITOR  = 'nvr -cc split --remote-wait +"setlocal bufhidden=delete"'
let $EDITOR      = 'nvr -l'
let $ECTO_EDITOR = 'nvr -l'

" Navigation
nnoremap <C-n> :NERDTreeToggle<CR>

" Search
nmap <C-p> :FZF<CR>
nmap ; :Buffers<CR>
nmap <Leader>t :Tags<cr>

" Terminal
tnoremap <Esc> <C-\><C-n><Esc><CR>

nnoremap <silent> <leader>o :vertical botright Ttoggle<CR><C-w>l
nnoremap <silent> <leader>O :vertical botright Ttoggle<CR><C-w>l<C-W>J
nnoremap <silent> <leader><space> :vertical botright Ttoggle<CR><C-w>l

tnoremap <silent> <leader><space> <C-\><C-n>:Ttoggle<CR>

tnoremap <silent> <C-s>l :TREPLSendLine<CR>
tnoremap <silent> <C-s>s :TREPLSendSelection<CR>

" Fast replace
nnoremap <leader>k :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>
vnoremap <leader>k y :%s/<C-r>"//gc<Left><Left><Left>

" Plugins
call plug#begin('~/.config/nvim/plugged')
	" Visual
	Plug 'dracula/vim',{'as':'dracula'}
	Plug 'morhetz/gruvbox'
	Plug 'vim-airline/vim-airline'
	Plug 'airblade/vim-gitgutter'
	Plug 'psliwka/vim-smoothie'

	" Functionality
	Plug 'mhinz/vim-startify'
	Plug 'scrooloose/nerdtree'
	Plug 'tpope/vim-fugitive'
	Plug 'junegunn/fzf.vim'
	Plug 'editorconfig/editorconfig-vim'
        Plug 'kassio/neoterm'
        
	" File Manager extensions
	Plug 'tsony-tsonev/nerdtree-git-plugin'
	Plug 'ryanoasis/vim-devicons'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
        
	" Integration with external programs
	Plug 'christoomey/vim-tmux-navigator'
        
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

" Display
syntax on
set encoding=UTF-8
set inccommand=nosplit
set nowrap
set expandtab
set autowrite
set ignorecase
set smartcase
set magic
set tabstop=4
set shiftwidth=4

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

" Side panel
set number relativenumber

" Visual
colorscheme dracula
set lazyredraw
set termguicolors
set noshowmode
set showcmd

set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
	\,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
	\,sm:block-blinkwait175-blinkoff150-blinkon175

highlight ColorColumn ctermbg=236 guibg=#252733
let &colorcolumn=join(range(80,999),',')

let g:ackprg='ag --vimgrep'

source ~/.config/nvim/coc.vim
source ~/.config/nvim/nerdtree.vim
source ~/.config/nvim/devicons.vim
source ~/.config/nvim/airline.vim
source ~/.config/nvim/productivity.vim
source ~/.config/nvim/gitgutter.vim
