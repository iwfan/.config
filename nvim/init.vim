" __     _____ __  __ ____   ____ 
" \ \   / /_ _|  \/  |  _ \ / ___|
"  \ \ / / | || |\/| | |_) | |    
"   \ V /  | || |  | |  _ <| |___ 
"    \_/  |___|_|  |_|_| \_\\____|
"                                 

source $HOME/dotfiles/nvim/settings/env.vim
source $HOME/dotfiles/nvim/settings/plugins.vim
source $HOME/dotfiles/nvim/settings/general.vim
source $HOME/dotfiles/nvim/settings/keymappings.vim

colorscheme deus

" ===
" === key map
" ===
" NERDTree git
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "M",
    \ "Staged"    : "+",
    \ "Untracked" : "?",
    \ "Renamed"   : "R",
    \ "Unmerged"  : "C",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
