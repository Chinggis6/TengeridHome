" GVim
" Tengerid Visual Editor
" set -x VISUAL 'gvim -p'

" colorscheme quantum
" colorscheme neodark
set background=dark

" Remove Menubar and Toolbar

set guioptions -=m 
set guioptions -=T

" Remove scroll bars

set guioptions -=r
set guioptions -=L

" Disable cursor blinking

set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait0
