"-------------------------- Basic local settings --------------
filetype plugin indent on

setlocal softtabstop=4
setlocal makeprg=make\ -kj$(sysctl\ \-n\ hw.ncpufound)\ %<	                "build parallel make on all cores
setlocal cinoptions+=t0					                                    "function name to begin on column 0
setlocal cinoptions+=l1					                                    "braces around case statement


"-------------------------- Mappings ---------------------------

nnoremap <buffer> <localleader>m :call MakeTags()<CR>
nnoremap <buffer> <localleader>c :make<CR>
nnoremap <buffer> <localleader>cg :call GenericComment()<CR>
nnoremap <buffer> <localleader>cs :call CommentStatement()<CR>
nnoremap <buffer> <localleader>cb :call CommentBlock()<CR>
nnoremap <buffer> <localleader>cp A/* Private function prototypes */<CR><ESC>
nnoremap <buffer> <localleader>cP A/* Private function prototypes */<CR><ESC>
nnoremap <buffer> <localleader>cf o/*<CR>File: <filename><CR>------------------<CR>/<ESC>ko
nnoremap <buffer> <localleader>ck o/*<CR>Constants<CR>--------------<CR><const 1>: <CR><const 2>: <CR>/<ESC>ko
nnoremap <buffer> <localleader>cm o/*<CR>Function: <functionname><CR>Usage:    <how to use the function><CR>--------------------------------------<CR>/<ESC>ko

"-------------------------- Functions -------------------------------

let b:isTags=0
function MakeTags()
	if !b:isTags
		execute "!find . -name '*.c' -o -name '*.h' | xargs ctags"
		let b:isTags=1
	endif
endfunction

let b:isCommented=0
function CommentStatement()
    if !b:isCommented
        let b:isCommented=1
        execute "normal! I/* \<ESC>A */\<ESC>"
    else
        let b:isCommented=0
        execute "normal! \^daw\$daw"
    endif
endfunction

let b:isCommentedBlock=0
function CommentBlock()
    if !b:isCommentedBlock
        let b:isCommentedBlock=1
        execute "normal! \[mo/*\<ESC>\]mO*/\<ESC>"
    else
        execute "normal! \[m/\/\*\<CR>dd\]m?\*\/\<CR>dd"
        let b:isCommentedBlock=0
    endif
endfunction

function GenericComment()
    execute "normal! A/*   */\<ESC>hhh\i"
endfunction

"-------------------------------------------------------------------------
