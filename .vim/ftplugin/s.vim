filetype plugin indent on

let g:asmsyntax = "nasm"
let NASM="nasm -f elf64 -D OpenBSD"
let LD="ld.bfd -static -e _start -nopie"


au BufEnter *.asm setlocal filetype=nasm
au BufEnter *.s setlocal filetype=nasm

