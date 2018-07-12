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
set runtimepath+=~/.vim/

if empty(glob('~/.vim/autoload/plug.vim'))
  silent call system('mkdir -p ~/.vim/{autoload,bundle,cache,undo,backups,swaps}')
  silent call system('curl -fLo ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
  execute 'source  ~/.vim/autoload/plug.vim'
  augroup plugsetup
    au!
    autocmd VimEnter * PlugInstall
  augroup end
endif

call plug#begin('~/.vim/plugged')

" UI
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'
" GIT
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
" Functionality
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()
