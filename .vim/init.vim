so ~/.vim/ftplugin/netrw.vim
so ~/.vim/plugins.vim                                                   "Source vim plugins file

set background=dark
set spell
set spelllang=en
"colorscheme elflord                                                     "set color scheme to elflord
"colorscheme nord
colorscheme gruvbox

set noshowmode                                                          "disable the generic statusbar
set laststatus=2
syntax enable						                                    "activating syntax highlighting.
let mapleader = ','					                                    "default mapkey is backslash but comma is better.
let maplocalleader = "\\"
let g:rustfmt_autosave = 1

let g:asmsyntax = "nasm"
let NASM="nasm -f elf64 -D OpenBSD"
let LD="ld.bfd -static -e _start -nopie"

set path=**
set number						                                        "activating line numbers.
set t_CO=256						                                    "set terminal color to 256.
"set wrap                                                                "this enables "visual" wrapping
"set textwidth=0 wrapmargin=0                                            "this turns off physical line wrapping 
set tags=tags;/
set autowrite						                                    "automatically write buffer to a file
set tabstop=4						                                    "show existing tab with 4 spaces width
set shiftwidth=4					                                    "when indenting with '>', use 4 spaces width
set expandtab						                                    "On pressing tab, insert 4 spaces
"set termwinsize=10x0

let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }

"----------------------- Mappings ------------------------"
set hlsearch
set incsearch

"----------------------- Mappings ------------------------"

"Make it easy to edit the .vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add simple hightlight removal.
nmap <Leader><space> :nohlsearch<cr>
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p
nnoremap <Leader>, <C-^>
nnoremap <C-p> :FZF<cr>
nnoremap <C-w> :W<cr>
nnoremap <F8> :Goyo<cr>
nnoremap <localleader>p :call ToggleNetrw()<cr>
nnoremap <localleader>t :call OpenTermSession()<cr>
nmap <F9> :TagbarToggle<CR>
nnoremap <F11> :call SaveSplitSession("~/.local/tmp/splitsession.vim")<cr>

"----------------------- Auto-Commands -------------------"

"Automatically source the .vimrc file on save.
augroup autosourcing

	autocmd!
	autocmd BufWritePost .vimrc source %

augroup END


"ASM/S filetype
au BufEnter *.asm setlocal filetype=nasm
au BufEnter *.s setlocal filetype=nasm

"----------------------- Global Functions --------------------------------"

let g:SessionSave=0
function! SaveSplitSession(filePath)
	if g:SessionSave
		silent execute ":source" . a:filePath
		let g:SessionSave=0
	else
		let g:SessionSave=1
		silent execute ":mks!" . a:filePath | silent execute ":only"
	endif
endfunction

let g:TermOpened=0
function! OpenTermSession()
	if g:TermOpened
		silent execute ":bwipeout! \!/bin/ksh"
		let g:TermOpened=0
	else
		silent execute ":term" | silent execute "normal! \<C-W>\<C-W>"
		let g:TermOpened=1
	endif
endfunction

"----------------------- Split management -------------------------"

set splitbelow
set splitright

noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-H> <C-W><C-H>
noremap <C-L> <C-W><C-L>

tnoremap <C-J> <C-W><C-J>
tnoremap <C-K> <C-W><C-K>
tnoremap <C-H> <C-W><C-H>
tnoremap <C-L> <C-W><C-L>


"-------------- Disabling the arrow key in normal mode ------------

no <down> <Nop>
no <up> <Nop>
no <left> <Nop>
no <right> <Nop>


"-------------- Disabling the arrow key in insert mode -------------
ino <down> <Nop>
ino <up> <Nop>
ino <left> <Nop>
ino <right> <Nop>


"-------------- Mapping ii as an exit from insert mode --------------
"inoremap ii <ESC>

"----------------------- UltiSnips settings -------------------------"
"Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-space>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"-------------- Emmet bindings -------------------------------------
let g:user_emmet_leader_key='<C-L>'
