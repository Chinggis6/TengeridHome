" Toggle between background colors
" For Solarized colorscheme
" call togglebg#map("<F1>")

" Undo history tree
nnoremap <F1> :UndotreeToggle<CR>


" Save file
nnoremap <F2> :write<CR>
inoremap <F2> :write<CR>
nnoremap <C-s> :write<CR>

" Save file as
nnoremap <F3> :saveas 

" Rename file
" Requires tpope/vim-eunuch
nnoremap <F4> :Rename 
" Reload config file
nnoremap <F5> :source $HOME/.vimrc<CR>
"<CR>:echo 'Reloaded!'<CR>

nnoremap <F6> :FZF<CR>

" Distraction free view
" For use with gvim
nnoremap <F7> :Goyo<CR>

" Install plugins
inoremap <F8> :PlugInstall<CR>
nnoremap <F8> :PlugInstall<CR>

" Bring up Nerd Tree
map <F9> :NERDTreeToggle<CR>

" Exit without saving any open file
map <F10> :quitall!<CR>

" Show all user mappings
map <F11> :map<CR>

" Paste mode
" Correct indentation when pastin
set pastetoggle=<F12>
