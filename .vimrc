autocmd Filetype make setlocal noexpandtab

map <C-J> :tabn<CR>

map <C-K> :tabp<CR>

map <C-O> :tabnew ./

set hlsearch
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
" Use spaces instead of tabs
set expandtab

set tabstop=2
set softtabstop=2
set shiftwidth=2

" Be smart when using tabs ;)
set smarttab

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
