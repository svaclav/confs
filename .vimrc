set nu
set wildmenu
set incsearch
set ignorecase
set smartcase
set softtabstop=2

nmap  S  :%s//g<LEFT><LEFT>

let @h = 'yypVr'

let g:loaded_matchparen=1

:inoremap ( ()<Esc>i
:inoremap { {}<Esc>i
:inoremap [ []<Esc>i
