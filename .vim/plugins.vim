call plug#begin()

" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
" Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'rust-lang/rust.vim'
Plug 'itchyny/lightline.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/0.x',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html']
  \ }
Plug 'mattn/emmet-vim'
Plug 'preservim/tagbar'
Plug 'vimwiki/vimwiki'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/goyo.vim'
call plug#end()            " required
