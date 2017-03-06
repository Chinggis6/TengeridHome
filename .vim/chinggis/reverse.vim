command! ReverseWord call ReverseWord()
function! ReverseWord()
perl << EOF
    $curword = VIM::Eval('expand("<cword>")');
    $reversed = reverse($curword);
    VIM::Msg("$curword => $reversed");
    VIM::DoCommand("norm lbcw$reversed");
EOF
endfun

" Reverse word
nmap <localleader>r :ReverseWord<CR>

" Reverse region in Visual mode
vnoremap <localleader>r c<C-O>:set revins<CR><C-R>"<Esc>:set norevins<CR>

" Reverse lines (range allowed)
nmap <localleader>R :Mirror<CR>
command! -bar -range Mirror <line1>,<line2>call setline('.', join(reverse(split(getline('.'), '\zs')), ''))