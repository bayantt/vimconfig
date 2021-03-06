execute pathogen#infect()
syntax on
filetype plugin indent on
set number
set relativenumber
set splitright

" This color allows comments to be shown in this color. Earlier comments were
" and sort of unvisible to the eye.
:color desert

" Tell syntastic to run when we open a file
" Not to run when we close it
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" Get rid of accidental trailing whitespace on space
" TODO: From where it came?
autocmd BufWritePre * :%s/\s\+$//e

""NERDTree config
"close NERDTree if it's the last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"open NERDTree on RHS.
let g:NERDTreeWinPos = "right"

"Airline config
"set Airline theme
let g:airline_theme='solarized_flood'

"If working in windows subsystem linux or in Putty, disable the irritating beep of console
"NOTE: This also requires that '"set bell-style none" to be set in
"/etc/inputrc
"this will change the feedback from console beep to visual blips
set visualbell

"this will turn off the visual blips for the visualbell
set t_vb=

"TODO:
"
"2. tab and space settings.
"3. marker setting for the global environment. How many of them we can have?
"3. understand syntastic.
"

"Set no tabs and tabwidth of 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

"Searching in file
"ignorecase
"smartcase. NOTE: This requires setting ignorecase to work
set ignorecase
set smartcase

"place a purple colored cursor on the 81th coloum, if there is a text in it.
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

"Pane navigation
"
"Use Ctrl hjkl to move b/w panes

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
