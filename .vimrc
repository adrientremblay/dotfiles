set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number

packloadall

autocmd BufNewFile,BufFilePre,BufRead *.rmd,*.Rmd set filetype=markdown             
autocmd Filetype markdown map <F5> :!Rscript -e "rmarkdown::render('%', 'pdf_document')"<CR>
autocmd Filetype markdown set spell
autocmd Filetype markdown SoftPencil

autocmd filetype cpp nnoremap <F5> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
