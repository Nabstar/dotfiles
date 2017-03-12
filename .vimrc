set nocompatible              "latest vim settings/option.

so ~/.vim/plugins.vim

syntax enable						"activating syntax highlighting.
let mapleader = ','					"default mapkey is backslash but comma is better.
set number						"activating line numbers.
set t_CO=256						"set terminal color to 256.


"----------------------- Visuals -------------------------"
colorscheme atom-dark-256				"set atom dark as my colorscheme.



"----------------------- Mappings ------------------------"
set hlsearch
set incsearch



"----------------------- Mappings ------------------------"

"Make it easy to edit the .vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add simple hightlight removal.
nmap <Leader><space> :nohlsearch<cr>
nmap <Leader>p :NERDTreeToggle<cr>





"----------------------- Auto-Commands -------------------"

"Automatically source the .vimrc file on save.
augroup autosourcing

	autocmd!
	autocmd BufWritePost .vimrc source %

augroup END



"----------------------- Split management -------------------------"

set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>
