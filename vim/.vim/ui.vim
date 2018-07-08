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
" show matching brackets/parenthesis
set showmatch

" disable startup message
set shortmess+=I

" hide mode display
"set noshowmode

" syntax highlighting
syntax on
set synmaxcol=512
filetype plugin on

" stop unnecessary rendering
"set lazyredraw

" show line numbers
set number
set relativenumber

" Show Command in bottom bar
set showcmd

" no line wrapping
set nowrap

" no folding
set nofoldenable
set foldlevel=99
set foldminlines=99
set foldlevelstart=99

" highlight cursor
set cursorline
"set cursorcolumn

" show invisibles
set list
set listchars=
set listchars+=tab:𐄙\ 
set listchars+=trail:·
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=nbsp:⣿

" split style
set fillchars=vert:▒

" tree style file explorer
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_winsize=25
