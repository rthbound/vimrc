" Better use tabs in make files
autocmd Filetype make setlocal noexpandtab

map <C-O>  :tabnew ./
map <C-A>  ggVG
map <C-n>  ggn

" But the following shortcuts for navigating tabs won't work when using buffers
"map <C-J> :tabnext<CR>
"map <C-K> :tabprevious<CR>

" These, however, will use :tabn/:tabp unless there are no tabs, then :bn/:bp
" Do note: if you have a buffer with multiple tabs, the shortcut will not execute :bn/:bp
:nnoremap <silent> <C-j> :<C-u>if tabpagenr('$') > 1<Bar>tabnext<Bar>else<Bar>bnext<Bar>endif<CR>
:nnoremap <silent> <C-k> :<C-u>if tabpagenr('$') > 1<Bar>tabprevious<Bar>else<Bar>bp<Bar>endif<CR>


set hlsearch

" Make whitespace ugly so I can yell about it
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/


" (Usually) use spaces instead of tabs
set expandtab

set tabstop=2
set tabpagemax=30
set softtabstop=2
set shiftwidth=2

"set smarttab

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

au BufRead,BufNewFile *.thor set filetype=ruby
au BufRead,BufNewFile *.thor set filetype=thor
au! Syntax thor source $HOME/.vim/syntax/thor.vim

au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars
