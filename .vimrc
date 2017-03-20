set nocompatible              "latest vim settings/option.
set background=dark 	      "Set background to dark


so ~/.vim/plugins.vim

syntax enable						"activating syntax highlighting.
let mapleader = ','					"default mapkey is backslash but comma is better.
let g:EclimCompletionMethod = 'omnifunc' 		"Set vim to use eclipse omnifunction
let g:airline#extensions#tabline#enabled = 1            "Enable airline tabline.
let g:airline_powerline_fonts = 1			"Enabling powerline font
"------------------------ HTML5 setting ------------------"
let g:html5_event_handler_attributes_complete = 0	"Disable handler
let g:html5_rdfa_attributes_complete = 0		"Disable RDF's
let g:html5_microdata_attributes_complete = 0		"Disable microdata
let g:html5_aria_attributes_complete = 0		"Disable WAI ARIA



set number						"activating line numbers.
set t_CO=256						"set terminal color to 256.
set wrap                                                "this enables "visual" wrapping
set textwidth=0 wrapmargin=0                            "this turns off physical line wrapping 





"----------------------- Visuals -------------------------"
colorscheme solarized					"set fruity as my colorscheme.



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
inoremap ii <ESC>
