se nu
syntax on
se smartindent
set hlsearch
se nocindent
color wombat256
set t_Co=256
imap ii <Esc>
imap jk <Esc>:w<CR>
set laststatus=2
 set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
au BufNewFile,BufRead *.less set filetype=less
if has("autocmd")
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif
se ts=4
se sw=4
se backspace=2
