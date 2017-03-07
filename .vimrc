" --- INTRO ---

" ------ --- ------
" +       +      +
" ------ --- ------
"
" Chinggis Tenger
" Vimmer, Archer
" The Son of Web
" Filius VVeborum
"
" ------ --- ------
" +       +       +
" ------ --- ------

" Vim 8.0
" Vim, Vi (Visual) Improved

" Tengerid Editor
" Perfecting my favorite editor and its configuration
" Vimcraft

" ---

" “No one constitutes as great a favor to me in the Environment of Linux as Vim ...
	"when the editors of text are mentioned, Vim is the guiding star.”

		"The Four Editors and Their Configuration,

			"Ibn Idrīs al-Shāfiʿī.

				"(aka sha256)

" ---

" Basic usage

" Deprive option
" :set nonumber

" Show option value
" :set number?

" Show all options
" :set

" Show all variables
" :let

" Show all Normal mode user-set key bindings
" :nmap

" Show all marks
" Marks are file bookmarks to save cursor position in buffers
" :marks

" Define commands
" User defined commands start with capital
" command MyCommand echo "Hello, World!"

" Modeline
" Append to the end to pass options
" #vim: ft=Markdown

" --- ORTNI ---

" --- PLUGINS ---

" Vim-Plug minimalistic plugin manager

call plug#begin('~/.vim/plugged')

"Solarized colorscheme
"
Plug 'altercation/vim-colors-solarized'

" Language pack, 70+ packages
Plug 'sheerun/vim-polyglot'

" gcc for commenting lines
Plug 'tpope/vim-commentary'

" yss, cs"', ysiw, ds" for surrounding text
Plug 'tpope/vim-surround'

" Provides file manipulation commands such as :Remove, :Rename, :Move, and :SudoWrite
Plug 'tpope/vim-eunuch'

" Nerdtree
Plug 'scrooloose/nerdtree'

" Vim wiki
" \ww to go to index.wiki
Plug 'vimwiki/vimwiki'

" Improved incremental searching
Plug 'haya14busa/incsearch.vim'

" Incremental fuzzy search extension
Plug 'haya14busa/incsearch-fuzzy.vim'

" Dependency of the below plugin
Plug 'kana/vim-operator-user'

" Flash yank area
" Visually flash the area yanked to the register/clipboard
Plug 'haya14busa/vim-operator-flashy'

" Star motions
Plug 'haya14busa/vim-asterisk'

" Powerline / Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Spacemacs key bindings for Vim
" https://github.com/meitham/vim-spacemacs
Plug 'meitham/vim-spacemacs'

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" Alternative colorscheme
" Plug 'zeis/vim-kolor'

" Highlight i3 config file better
Plug 'PotatoesMaster/i3-vim-syntax'

" Highlight tmux config files better
Plug 'tmux-plugins/vim-tmux'

" Undo history tree
" :UndotreeToggle
Plug 'mbbill/undotree'

" Align tables well
Plug 'godlygeek/tabular'

" Fancy start screen
Plug 'mhinz/vim-startify'

" Fancy file icons
" Works with Nerd Tree
" For Gvim
Plug 'ryanoasis/vim-devicons'

" Dependency
Plug 'tpope/vim-unimpaired'
" Dired for Vim
" :Dirvish
Plug 'justinmk/vim-dirvish'

" Fugitive
" Git wrapper
Plug 'tpope/vim-fugitive'

" Inspired by Quantum theme
Plug 'KeitaNakamura/neodark.vim'

" Show buffer names in status line
Plug 'bling/vim-bufferline'

" Org mode support
Plug 'jceb/vim-orgmode'

" Highlight Nginx config files
Plug 'evanmiller/nginx-vim-syntax'

" Highlight log syntax
Plug 'dzeban/vim-log-syntax'

" Highlight Logrotate log files
Plug 'moon-musick/vim-logrotate'

" Highlight TomL config markup file type syntax
Plug 'cespare/vim-toml'

" Note taking and note management in Vim
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'

" Extended session management
" :OpenSession
Plug 'xolox/vim-session'

" Enhanced bookmarking
Plug 'vim-scripts/TurboMark'

" Enhanced buffer listing
" :BufExplorer (with single f)
Plug 'jlanzarotta/bufexplorer'

" Scratch buffer
" :Scratch
Plug 'kana/vim-scratch'

" Tab completion
Plug 'ervandew/supertab'

" Rich text highlight in Vim
Plug 'bpstahlman/txtfmt'

" Coffee script support
Plug 'kchmck/vim-coffee-script'

" Highlight Vimperator config file syntax
Plug 'vimperator/vimperator.vim'

call plug#end()

" --- SNIGULP ---

" Space as global leader
" Analogous to Major mode
let mapleader=" "
" Comma as local leader
" Analogous to Minor mode
let maplocalleader=","

" Integrate Limelight with Goyo
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" Don't try to be compatible with Vi enabling new features
set nocompatible

" --- SOLARIZED ---

" Highlight syntax
syntax on
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" --- DEZIRALOS ---

" --- KOLOR ---

" let g:kolor_italic=1                    " Enable italic. Default: 1
" let g:kolor_bold=1                      " Enable bold. Default: 1
" let g:kolor_underlined=0                " Enable underline. Default: 0
" let g:kolor_alternative_matchparen=0    " Gray 'MatchParen' color. Default: 0

" colorscheme kolor

" --- ROLOK ---

" ---

" Adjust terminal colors

if !has('gui_running')
	" Tell Vim terminal supports 256 colors
	set t_Co=256
	" set term=xterm-256color
endif

" ---

" --- OPTIONS ---

" Causes "Press ENTER or type command to continue" on startup
" set syntax on
" Correct way
" set syntax=vim
" set syntax != syntax on

" Show line numbers
set number
" set rnu
set relativenumber

" Double lines at bottom bar
" Shows file name, modification status, current line number, character on cursor position, scroll percentage
set laststatus=2

" Disable ALL indentation
set noautoindent
set nosmartindent
set nocindent

" Disable automatic commenting on new line insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Show file name and its modification state in window title
set title

" Tab autocompletion shows menu in Ex mode above the command
set wildmenu
set wildmode=longest:full,full
set wildignore=*.swp,.git

" set clipboard=unnamedplus
" Copy to Primary selection
set clipboard=unnamed

" Show keys in Normal mode at the bottom
set showcmd

" Enable mouse
" Works with Nerd Tree to open a file or directory, resize panes
set mouse=a
" set selectmode+=mouse

" Copy to Primary selection in Visual mode
" vnoremap y "*y
" vnoremap Y "*Y

" Put visually selected text in Primary selection register (*)
" set clipboard+=autoselect

" Enable word autocompletion
" C-n to activate
" z= correct, zg add as a good word, zw wrong word
" ]s, [s search for misspelled words forward / backwards
set spell
" en_ca, en_gb, en_au
set spelllang=en_us
" RMB
" For Gvim
set mousemodel=popup

" Show glyphs
set encoding=utf8

" Nerdfont for Gvim
" set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11

" Disable blinking cursor
" A good article on universal hatred towards eye-annoying blinking cursor
" http://www.jurta.org/en/prog/noblink
set guicursor=a:blinkon0

" Error feedback
set errorbells
set visualbell

set shortmess=a
" Set bottom bar's height
" set cmdheight=2

" Highlight current line
set cursorline

" Highlight current column, file-wise
set cursorcolumn

" zf to fold
set foldenable
" Manually select text in Visual mode or else to fold
set foldmethod=manual

" Briefly jump to the matching bracket
set showmatch

" Read modeline when found inside files opened
set modeline

" Show line and column position in status line
set ruler

" Can be - or +, is set according to textwidth
" cc
" set colorcolumn=80
" set colorcolumn=+10

" Wrap text when crossing line width
set wrap

" TTY improvements
set ttyfast

" Always substitute globally in file
" Can be toggled with g (eg /g to reverse to local substitution)
" :s, :substitute command
" :s/apple/pear/g
set gdefault

" Search inside wraps too
set wrapscan

" Autocompletion
set complete=.,w,b,t
set completeopt-=preview

" Enables the reading of .vimrc, .exrc and .gvimrc indent the current
" directory.  If you switch this option on you should also  consider
" setting the 'secure' option.  Using a  local .exrc, .vimrc or .gvimrc
" is a potential security leak, use with   care!
set exrc
set secure

" Shows Normal/Insert mode state
set showmode

" set shiftwidth=4
" Round down indentation to shiftwidth
set shiftround

" Define tab width
" set softtabstop=4
" set tabstop=4

" Pretty line breaks
set showbreak=↪

" Grep program for :grep command
" Ripgrep
set grepprg=rg

" No redraw on macro execution
set lazyredraw 

" No delays on escaping
set noesckeys

" xterm / tmux compatible mouse
set ttymouse=xterm2

" Delete comment character when joining commented lines
set formatoptions+=j 

" Change directory to the opened file's or switched buffer's
set autochdir

" Bigger command history
" Default value is 50
set history=1000

" Key to invoke command-line window in Ex Mode (:)
" set cedit=^F

" Command line window height
" set cmdwinheight=7
" set cmdwinheight=20

" Command mode height in statusline
" set cmdheight=1
" set cmdheight=2

" --- SNOITPO ---

" Search options

set incsearch
set hlsearch
set ignorecase
set smartcase

" ---

" Improved incremental search

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" :h g:incsearch#auto_nohlsearch
" set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" Fuzzy search
" map z/ <Plug>(incsearch-fuzzy-/)
" map z? <Plug>(incsearch-fuzzy-?)
" map zg/ <Plug>(incsearch-fuzzy-stay)

" Fuzzyspell search
" map z/ <Plug>(incsearch-fuzzyspell-/)
" map z? <Plug>(incsearch-fuzzyspell-?)
" map zg/ <Plug>(incsearch-fuzzyspell-stay)

" Fuzzy search and fuzzyspell together

function! s:config_fuzzyall(...) abort
  return extend(copy({
  \   'converters': [
  \     incsearch#config#fuzzy#converter(),
  \     incsearch#config#fuzzyspell#converter()
  \   ],
  \ }), get(a:, 1, {}))
endfunction

noremap <silent><expr> z/ incsearch#go(<SID>config_fuzzyall())
noremap <silent><expr> z? incsearch#go(<SID>config_fuzzyall({'command': '?'}))
noremap <silent><expr> zg? incsearch#go(<SID>config_fuzzyall({'is_stay': 1}))

" ----

" Flash yank area
" vim-operator-flashy plugin

map y <Plug>(operator-flashy)
nmap Y <Plug>(operator-flashy)$

" ---

" Star motions
" vim-asterisk

" map *   <Plug>(asterisk-*)
" map #   <Plug>(asterisk-#)
" map g*  <Plug>(asterisk-g*)
" map g#  <Plug>(asterisk-g#)
" map z*  <Plug>(asterisk-z*)
" map gz* <Plug>(asterisk-gz*)
" map z#  <Plug>(asterisk-z#)
" map gz# <Plug>(asterisk-gz#)

" Set z (stay) behaviour as default
map *  <Plug>(asterisk-z*)
map #  <Plug>(asterisk-z#)
map g* <Plug>(asterisk-gz*)
map g# <Plug>(asterisk-gz#)

let g:asterisk#keeppos = 1

" --- PLUGIN OPTIONS ---

" Powerline / Airline

" As required by Powerline
let g:powerline_pycmd = 'py3'
let g:Powerline_symbols = 'fancy'

let g:airline_powerline_fonts =1
" :AirlineTheme <theme>
" simple, dark, monochrome, understated, distinguished, jellybeans, term
let g:airline_theme='distinguished'

" ---

" Vim commentary
" Correct commenting in .Xdefaults and .Xresources
autocmd FileType xdefaults setlocal commentstring=!\ %s

" ---

" TurboMark

nmap <silent> m :TurboMark<CR>
nmap <silent> ' :TurboFind<CR>

" ---

" BuffExplorer

let g:bufExplorerShowRelativePath=1
let g:bufExplorerSortBy='fullpath'

" ---

" Nerd Tree

" Quit after opening file
let NERDTreeQuitOnOpen=1

" Ignore multimedia files and so
let NERDTreeIgnore = ['\.png$','\.jpg$','\.gif$','\.mp3$','\.flac$', '\.ogg$', '\.mp4$','\.avi$','.webm$','.mkv$','\.pdf$', '\.zip$', '\.tar.gz$', '\.rar$']

" Show hidden files too
let NERDTreeShowHidden=1

" --- SNOITPO NIGULP ---

" My key bindings

" Tab manipulation
source ~/.vim/chinggis/tabs.vim

" Operational function keys
source ~/.vim/chinggis/fkeys.vim

" Reverse word and selection
source ~/.vim/chinggis/reverse.vim

" Tabularize key bindings
source ~/.vim/chinggis/tabular.vim

" Use primary selection as default clipboard
" nnoremap p "*p
" nnoremap P "*P

" Five times more movement
nnoremap <C-k> 5k
nnoremap <C-j> 5j
nnoremap <C-l> 5l
nnoremap <C-h> 5h

" Buffer navigation
nmap <localleader>bn :bnext<CR>
nmap <localleader>bN :bprev<CR>
nmap <localleader>b0 :bfirst<CR>
nmap <localleader>b$ :blast<CR>
nmap <localleader>bd :bdelete<CR>
nmap <localleader>bb :buffers<CR>
nmap <localleader>B :BufExplorer<CR>

nmap <localleader>fW :SudoWrite<CR>
nmap <localleader>W <localleader>fW

" Ex mode
" type visual to switch back to Normal mode
nnoremap Q <nop>
 
" Macros
nnoremap q <nop>

" Command mode
nnoremap ; :
vnoremap ; :
nnoremap : Q
vnoremap : Q

" Sudo write the file
cmap w!! w !sudo tee % >/dev/null

" Copy always from Primary selection
map <MouseMiddle> "*p

" ---

" Tengerid Commands

" Mapping Man to :help

" <q-args> for quoted arguments
command! -nargs=* Man help <args>

" Save file as root user
" Requires Eunuch plugin
command! W SudoWrite

" Reload vimrc on save instantly
" http://www.bestofvim.com/tip/auto-reload-your-vimrc/
augroup reload_vimrc " {
" Clears out any previous autocommands Vim has registered for that group
    autocmd!
    autocmd BufWritePost $HOME/.vimrc source $HOME/.vimrc
augroup END " }
