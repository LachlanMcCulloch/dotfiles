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

let configs = [
\   "general",
\   "ui",
\   "plugins",
\   "plugin-settings",
\]

for file in configs
    let x = expand("~/.vim/".file.".vim")
    if filereadable(x)
        execute 'source' x
    endif
endfor
