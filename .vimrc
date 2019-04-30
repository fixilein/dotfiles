" enable line numbers
set number

filetype plugin on

" enable syntax highlighting 
syntax on


" ignorecase in seatch pattern except when using capital letters	
set ic 	
set smartcase

" highlight all matches
set hlsearch

" highlight match while typing search pattern (incsearch)
set is  

" pywal colors (i think)
set t_Co=16

" bottom commandline
set showcmd
set laststatus=2

set wildmenu


" LaTeX (with fish shell) 
map <F5> :w<CR> :!pdflatex % <CR><CR>
map <F6> : !evince (echo % \| sed 's/tex$/pdf/') 2> /dev/null & <CR><CR>
