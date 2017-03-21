" Tabs
" Extends G for Tabs tradition

" Open a new tab after current
nnoremap gn :tabnew<CR>
" Open a new tab before current
nnoremap gN :tabnew-1<CR>

" Drop current tab switching to the next
nnoremap gd :tabclose<CR>
" Drop tab switching to the previous
" qutebrowser legacy
" <bar> is | to chain commands
nnoremap gD :tabclose <bar> tabprevious<CR>

" Force drop without saving switching to the next
nnoremap gC :tabclose!<CR>

" " Move tab right
nnoremap <LocalLeader>gm :+1tabmove<CR>
" " Move tab left
nnoremap <LocalLeader>gM :-1tabmove<CR>

" Move tab to beginning
nnoremap <LocalLeader>gm0 :0tabmove<CR> 
" Move tab to end
nnoremap <LocalLeader>gm$ :tabmove<CR>

" Switch to the first tab
nnoremap <LocalLeader>g0 :tabfirst<CR>
" Switch to the last tab
nnoremap <LocalLeader>g$ :tablast<CR>

" Drop all tabs except current
nnoremap <LocalLeader>gO :tabonly<CR>

" Open file in tab
nnoremap <LocalLeader>go :tabedit 
