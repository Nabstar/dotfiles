"----------------------- Basic settings --------------------------
let g:netrw_liststyle = 3				                                "choose a liststyle
let g:netrw_banner = 0					                                "remove netrw banner appearing on the top
let g:netrw_browse_split = 1				                            "open a file in horizontal split
let g:netrw_winsize = 13
let g:netrw_cursor = 0
let g:netrw_hide = 1
let g:netrw_altv = 0


"----------------------- Mappings --------------------------------


"----------------------- Functions -------------------------------
let g:NetrwIsOpen=0
function! ToggleNetrw()
	if g:NetrwIsOpen
		let i = bufnr("$")
			while(i >= 1)
				if(getbufvar(i, "&filetype") == "netrw")
					silent exe "bwipeout" . i
				endif
				let i-=1
			endwhile
		let g:NetrwIsOpen=0
	else
		let g:NetrwIsOpen=1
		silent Lexplore! | silent execute "normal! \<C-W>\<C-W>"

    endif
endfunction

"-----------------------------------------------------------------
