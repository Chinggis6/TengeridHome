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

" Invert option's value
" : set invnumber

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

" .vimrc is loaded before plugins
" Put code into
" ~/.vim/after/plugin/*.vim
" To run after plugins get loaded
" 1. Vimrc, 2. Plugins, 3. After directory

" --- ORTNI ---

" --- PLUGINS ---

" Vim-Plug minimalistic plugin manager

call plug#begin('~/.vim/plugged')

Plug 'zirrostig/vim-schlepp'

" Solarized colorscheme
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
" Mode | Git | File | Type | Charset | % | line/lines | column | trailing / mixed indentation
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

" Three plugins in one
" Abbreviations, Substitution, and Case conversion (called Coercion)
" crs snake case, crc camel case, crm mixed case, cru snake upper case
" supports Repeat.vim
" OneTwoThree
Plug 'tpope/vim-abolish'

" Markdown support
" ]] next header, [[ previous,  ][ next sibling, [] previous sibling, ]c current, ]u parent, :Tocv Contents
Plug 'plasticboy/vim-markdown'

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

" Highlight trailing whitespace
Plug 'ntpeters/vim-better-whitespace'

" Show git status on Nerd Tree
Plug 'Xuyuanp/nerdtree-git-plugin'

" HTML tags and Latex support for %
Plug 'tmhedberg/matchit'

"Better URLs
" Universal text linking
Plug 'vim-scripts/utl.vim'

" Narrow region plugin for Vim
" <leader>nr or :NR
" :WidenRegion to save back
Plug 'chrisbra/NrrwRgn'

" Color HEX codes or color names
" :ColorToggle
Plug 'chrisbra/Colorizer'

" PKGBUILD syntax
Plug 'Firef0x/PKGBUILD.vim'

" Fish support (as separate file type)
" Already provided by Polyglot language pack
" Plug 'dag/vim-fish'

" Auto mkdir when saving
Plug 'pbrisbin/vim-mkdir'

" Dep
" Better increment, of dates etc
" 10<C-a> increments, 5<C-a> decrements
Plug 'tpope/vim-speeddating'

" Better repeating (.)
Plug 'tpope/vim-repeat'

" Gist support
Plug 'keith/gist.vim'

" Better ~/.muttrc
Plug 'vim-scripts/muttrc.vim'

Plug 'junegunn/rainbow_parentheses.vim'

call plug#end()

" Load or not plugins on start
" set noloadplugins
set loadplugins

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
scriptencoding utf-8
set encoding=utf8
set termencoding=utf-8
set fileencoding=utf-8

" Keep lines off when scrolling
" Default is 0
set scrolloff=5
set sidescrolloff=5

" Nerdfont for Gvim
" set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11

" Disable blinking cursor
" A good article on universal hatred towards eye-annoying blinking cursor
" http://www.jurta.org/en/prog/noblink
set guicursor=a:blinkon0

" Error feedback
set errorbells
set visualbell

" No intro on start
" set shortmess+=I
set shortmess=a

" Set bottom bar's height
" set cmdheight=2

" Highlight current line
" cul
set cursorline

" Highlight current column, file-wise
set cursorcolumn

" zf to fold
set foldenable

" Manually select text in Visual mode or else to fold
set foldmethod=manual

" Show children headings on opening file
set foldlevel=1

" Column showing fold state (open or close) and level
set foldcolumn=1

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
" set complete=.,w,b,t
" Default: menu,preview
" set completeopt+=preview
" C-x C-k to complete keyword
" C-x C-l to complete line
" C-x C-s spelling suggestion
" C-x C-v Vim commands
set dictionary=/usr/share/dict/words

" C-x C-t
" http://www.gutenberg.org/ebooks/3202
" https://raw.githubusercontent.com/zeke/moby/master/words.txt
set thesaurus=$HOME/.vim/mthesaur.txt

" Enables the reading of .vimrc, .exrc and .gvimrc indent the current
" directory.  If you switch this option on you should also  consider
" setting the 'secure' option.  Using a  local .exrc, .vimrc or .gvimrc
" is a potential security leak, use with   care!
" set exrc
" set secure

" Shows Normal/Insert mode state
set showmode

" set shiftwidth=4
" Round down indentation to shiftwidth
set shiftround

" Define tab width
set softtabstop=4
set tabstop=4

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

" Larger command history
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

" Show whitespace as characters (tab, space)
" Useful to see end of line or trail spaces
set list
" Dagger †, Double dagger ‡, Ellipsis …, Cross ✘, White Pointer ▷, White Arrow ⇨
" ‧, •, ·
set listchars=tab:▸\ ,eol:•,trail:·

" ?
" set splitbelow
" set splitright

" Move cursor to start of line (FNB) rather than keeping the cursor in the current position
" FNB - First Non Blank
" Is set as default
" set startofline
set nostartofline

" Match other marks too on % key press
set matchpairs+=<:>,“:”

" autoread when file is changed from outside
set autoread

" Transparency
" highlight clear

" Backspace
set backspace=eol,start,indent

" Searching without escaping
set magic

" Cross lines when going left/right
" set whichwrap+=<,>,h,l

" How long to blink when matching brackets
" Tenth of second
" mat
set matchtime=2

" lbr
set linebreak
" Linebreak on 120 characters
" tw
set textwidth=200

compiler fish

" Report messages like "1 line less" even if just one line is changed
" Default is 2
set report=0

" Don't equalize splits
" set equalalways
set noequalalways

" Open Vim command under cursor instead of Linux command
set keywordprg=:help

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

" Correct commenting for Most pager config file, mostrc
autocmd FileType mostrc setlocal commentstring=%\ %s

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
" Ave, :P
let NERDTreeIgnore = ['\.png$','\.jpg$','\.gif$','\.mp3$','\.flac$', '\.ogg$', '\.mp4$','\.avi$','.webm$','.mkv$','\.pdf$', '\.zip$', '\.tar.gz$', '\.rar$', '\.swp$']

" Show hidden files too
let NERDTreeShowHidden=1

" Hides "Press ? for help"
let NERDTreeMinimalUI=1

" let g:NERDTreeWinPos = 'right'

let NERDTreeHighlightCursorline=1

" Single click to expand directories, double click to open files
let NERDTreeMouseMode=2

" Focus on current file in Nerd Tree
noremap <silent> <LocalLeader>n :NERDTreeFind<CR>

" Focus on Nerd Tree, open if closed
noremap <silent> <LocalLeader>N :NERDTreeFocus<CR>

" Colorizer

" Color all files
" let g:colorizer_auto_color = 1

" Color specific file types
let g:colorizer_auto_filetype='css,html,scss,xml,js,yaml,svg,haml,styl,less,json,jsx,coffee,ls,json,yaml'

" --- SNOITPO NIGULP ---

" My key bindings
" Custom mappings

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
nnoremap <localleader>bn :bnext<CR>
nnoremap <localleader>bN :bprev<CR>
nnoremap <localleader>bo :enew<CR>
nnoremap <localleader>b0 :bfirst<CR>
nnoremap <localleader>b$ :blast<CR>
nnoremap <localleader>bd :bclose<CR>
nnoremap <localleader>bb :buffers<CR>
nnoremap <localleader>B :BufExplorer<CR>

nnoremap <localleader>fW :SudoWrite<CR>
nnoremap <localleader>W <localleader>fW

nnoremap ZW :SudoWrite<CR>

" Ex mode
" type visual to switch back to Normal mode
nnoremap Q <nop>

" Macros
nnoremap q <nop>

" Select all
noremap <localleader>a ggVG

" ---

" HJKL enforcement

noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

nnoremap <PageUp> <nop>
noremap <PageDown> <nop>
nnoremap <End> <nop>
noremap <Home> <nop>

" Use S-Ins
nnoremap <MiddleMouse> <Nop>

" ---

" Pane (window, split) navigation
nnoremap <localleader>h <C-w>h
nnoremap <localleader>l <C-w>l
nnoremap <localleader>j <C-w>j
nnoremap <localleader>k <C-w>k
nnoremap <localleader>s <C-w>v
nnoremap <localleader>d <C-w>c

" ---

" Command mode
" Colon, Semi-colon
nnoremap ; :
vnoremap ; :
nnoremap : Q
vnoremap : Q

" Sudo write the file
cmap w!! w !sudo tee % >/dev/null

" Copy always from Primary selection
map <MouseMiddle> "*p

" Keep the cursor in place while joining lines
" S-j
nnoremap J mzJ`z

nnoremap <LocalLeader>gs :Gstatus<CR>
nnoremap <LocalLeader>gr :Gremove<CR>
nnoremap <LocalLeader>gl :Glog<CR>
nnoremap <LocalLeader>gb :Gblame<CR>
nnoremap <LocalLeader>gm :Gmove
nnoremap <LocalLeader>gp :Ggrep
nnoremap <LocalLeader>gR :Gread<CR>
nnoremap <LocalLeader>gg :Git
nnoremap <LocalLeader>gd :Gdiff<CR>

nnoremap Zs :SaveSession<CR>
nnoremap Zo :OpenSession<CR>

nnoremap <LocalLeader>p :PlugInstall<CR>
nnoremap <LocalLeader>P :set paste!<CR>

" Schlepp
" Move text in Visual mode around file
vmap <up>    <Plug>SchleppUp
vmap <down>  <Plug>SchleppDown
vmap <left>  <Plug>SchleppLeft
vmap <right> <Plug>SchleppRight

vmap Dk <Plug>SchleppDupUp
vmap Dj <Plug>SchleppDupDown
vmap Dh <Plug>SchleppDupLeft
vmap Dl <Plug>SchleppDupRight

" Replace current word under cusor globally
nnoremap <LocalLeader>S :%s/\<<C-r><C-w>\>/

" Shortcut to help pages for Vim commands
nnoremap <LocalLeader>H :Man 

" Reize splits quickly

" Resize height
map = <C-w>+
map - <C-w>-

" Resize width
map + <C-w>>
map _ <C-w><

" Split right by default

" Split below (pane)
noremap <C-w>p <C-w>s

noremap <C-w>s <C-w>v

" ---

" Tengerid Commands

" Mapping Man to :help

" <q-args> for quoted arguments
command! -nargs=* Man help <args>

" Open new file in new tab
command! -nargs=* O tabe <args>
noremap <localleader>O :O 

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

" Vim abbreviations
" Evaluates after Esc
" Like Visual block mode replacements
abbrev _me Chinggis6@iCloud.com
abbrev _CTA Chinggis Tenger Atsyz

" Start Nerd Tree if no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Prevent lag on Esc hit
set ttimeoutlen=0
set timeoutlen=1000
au InsertEnter * set timeout
au InsertLeave * set notimeout

" -- Fish plugin ---
" Set up :make to use fish for syntax checking.
autocmd FileType fish compiler fish
" Set this to have long lines wrap inside comments.
autocmd FileType fish setlocal textwidth=79
" Enable folding of block structures in fish.
autocmd FileType fish setlocal foldmethod=expr

" Display current line number in bold text
highlight CursorLineNr cterm=bold

" Display comments as Italic
" highlight Comment cterm=italic
highlight Comment cterm=standout

" Different cursor shapes based on modes
" Set IBeam shape in Insert mode, underline shape in Replace mode and block shape in Normal mode.
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" Activate Rainbow Parentheses on LISP language family
" :RainbowParentheses
augroup rainbow_lisp
  autocmd!
  autocmd FileType lisp,clojure,scheme RainbowParentheses
augroup END






























" ---
" Vim is Beautiful
" Vim is Simple
" ---
" The End, 2017
