" Automatically open when starting vim on directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"
" Close NERDTree if it's the only thing left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let NERDTreeShowHidden = 1
let g:NERDTreeGitStatusWithFlags = 0
let g:NERDTreeGitStatusNodeColorization = 1
let g:NERDTreeShowIgnoredStatus = 1
let NERDTreeMinimalUI=1

" Files to be hidden
let NERDTreeIgnore = ['\.git$', '\.pioenvs$', '\.swp']
