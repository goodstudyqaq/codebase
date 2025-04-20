set clipboard=unnamedplus
set number
set tabstop=4
set shiftwidth=4
set encoding=utf-8
set shiftwidth=4
set expandtab
set relativenumber

syntax on
colorscheme darkblue
set background=dark


function! s:surround()
	    let word = expand("<cword>")
	        let wrap = input("wrap width: ")
		    let command = "s/".word."/".wrap.word.wrap."/"
		        execute command
endfunction
nmap cx :call <SID>surround()<CR>


