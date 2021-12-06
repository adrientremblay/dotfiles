set tabstop=4 
set shiftwidth=4 
set softtabstop=4 
set expandtab 
 
packloadall 
 
autocmd BufNewFile,BufFilePre,BufRead *.rmd,*.Rmd set filetype=markdown              
autocmd Filetype markdown map <F5> :!Rscript -e "rmarkdown::render('%', 'pdf_document')"<CR>                                                                                              
