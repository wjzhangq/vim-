set encoding=utf-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

set helplang=cn
set encoding=utf-8
syntax enable
syntax on

function! PhpCheckSyntax()
    setlocal makeprg=php\ -l\ -n\ -d\ html_errors=off
 
    " Set shellpipe
    setlocal shellpipe=>
 
    " Use error format for parsing PHP error output
    setlocal errorformat=%m\ in\ %f\ on\ line\ %l
    make %
endfunction
 
" Perform :PhpCheckSyntax()
map <F6> :call PhpCheckSyntax()<CR>
imap <F6> <ESC>:call PhpCheckSyntax()<CR>


set completeopt=longest,menu

set ai ignorecase tabstop=4
set nu