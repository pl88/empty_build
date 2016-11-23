set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set autoindent

set nowrap

set colorcolumn=80
highlight ColorColumn ctermbg=darkgray

augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

let &path.="interface/*,/usr/include/*,../../cpputest/*"

autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

set makeprg=make\ -C\ ./
noremap <F4> :make!<cr>
