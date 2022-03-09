set number
set tabstop=4
set shiftwidth=4
set encoding=utf-8
set shiftwidth=4
set expandtab
set relativenumber

function! s:surround()
    let word = expand("<cword>")
    let wrap = input("wrap width: ")
    let command = "s/".word."/".wrap.word.wrap."/"
    execute command
endfunction
nmap cx :call <SID>surround()<CR>



set nocompatible
filetype plugin on