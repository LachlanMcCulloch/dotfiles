" _____________________________________________________________________        
"  _____________________________________________________________________       
"   ________________/\\\_________________________________________________      
"    __/\\\____/\\\_\///_____/\\\\\__/\\\\\____/\\/\\\\\\\______/\\\\\\\\_     
"     _\//\\\__/\\\___/\\\__/\\\///\\\\\///\\\_\/\\\/////\\\___/\\\//////__    
"      __\//\\\/\\\___\/\\\_\/\\\_\//\\\__\/\\\_\/\\\___\///___/\\\_________   
"       ___\//\\\\\____\/\\\_\/\\\__\/\\\__\/\\\_\/\\\_________\//\\\________  
"        ____\//\\\_____\/\\\_\/\\\__\/\\\__\/\\\_\/\\\__________\///\\\\\\\\_ 
"         _____\///______\///__\///___\///___\///__\///_____________\////////_
"
" Author: LachlanMcCulloch
" Code:   
"
"
" codedark https://github.com/tomasiser/vim-code-dark
colorscheme codedark

" Vim Gitgutter
" speed optimizations
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1
let g:gitgutter_max_signs = 1500
let g:gitgutter_diff_args = '-w'
" custom symbols
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = ':'
" color overrrides
highlight clear SignColumn
highlight GitGutterAdd ctermfg=green ctermbg=234
highlight GitGutterChange ctermfg=yellow ctermbg=234
highlight GitGutterDelete ctermfg=red ctermbg=234
highlight GitGutterChangeDelete ctermfg=red ctermbg=234

" Vim airline
" enable buffer line
let g:airline#extensions#tabline#enabled = 1
" buffer visual separators
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" NERDTree
" Open NERDtree to specific directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

