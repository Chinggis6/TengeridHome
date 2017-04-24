#!/bin/fish

# TENGERID ENVIRONMENT
# Declaration of environment variables for Fish shell
# Created with Arch in mind

# ---

# SYSTEM DEFAULTS

set -x PATH $PATH /usr/local/bin $HOME/.bin $HOME/.scripts
# ~ .

# set -x EDITOR 'vim -p'
set -x EDITOR 'vim -p'
# Spacemacs
# set -x VISUAL 'emacsclient -nw'
# set -x VISUAL 'gvim -p'
set -x VISUAL 'vim -p'
# if not set opens commit message with VISUAL
set -x GIT_EDITOR 'vim -p'
set -x BROWSER 'qutebrowser'
set -x PAGER 'most'
# Enable 256 colors in urxvt
# Check with tput colors (owned by ncurses)
#set -x TERM 'linux'
#set -x TERM 'rxvt-256color'
# set -x TERM 'rxvt-unicode-256color'
# set -x TERM 'screen-256color-bce'
set -x TERM 'screen-256color'
# use chsh -s /usr/bin/fish
set -x SHELL '/usr/bin/fish'

# OTHER

set -x AUR 'https://aur.archlinux.org'
set -x GIT 'https://github.com'

set -x BOI "$HOME/BOI.md"
set -x BOT "$HOME/BOT.md"
set -x book "$BOT"
set -x books "$BOT" "$BOI"

# CONFIGURATION FILES

set -x C "$HOME/.config"

# i3 window manager

set -x i3d "$C/i3"
set -x i3 "$i3d/config"


# Tmux terminal multiplexer

# set -x tmux "$HOME/.tmux.conf"
set -x tmux "$HOME/.tmux.conf"
set -x T "$tmux"

set -x tmuxinator "$HOME/.tmuxinator/TS.yml"
set -x mux "$tmuxinator"

set -x dic '/usr/share/stardict/dic'



# ---

# Unicode

#/etc/locale.gen
#/etc/locale.conf

#locale
#locale-gen

set -x LANG               'en_US.UTF-8' 
set -x LANGUAGE           'en_US.UTF-8'
set -x LC_CTYPE           'en_US.UTF-8'
set -x LC_NUMERIC         'en_US.UTF-8'
set -x LC_TIME            'en_US.UTF-8'
set -x LC_COLLATE         'en_US.UTF-8'
set -x LC_MONETARY        'en_US.UTF-8'
set -x LC_MESSAGES        'en_US.UTF-8'
set -x LC_PAPER           'en_US.UTF-8'
set -x LC_NAME            'en_US.UTF-8'
set -x LC_ADDRESS         'en_US.UTF-8'
set -x LC_TELEPHONE       'en_US.UTF-8'
set -x LC_MEASUREMENT     'en_US.UTF-8'
set -x LC_IDENTIFICATION  'en_US.UTF-8'
set -x LC_ALL             'en_US.UTF-8'

# ---

# XDG
# X Desktop Group
# https://freedesktop.org/

# https://wiki.archlinux.org/index.php/XDG_Base_Directory_support
# https://wiki.archlinux.org/index.php/XDG_user_directories

set -x XDG_CONFIG_HOME     "$HOME/.config"
set -x XDG_DATA_HOME       "$HOME/.local/share"
set -x XDG_CACHE_HOME      "$HOME/.cache"

set -x XDG_CONFIG_DIRS     '/etc/xdg'
set -x XDG_DATA_DIRS       '/usr/local/share:/usr/share'

# xdg-user-dir
# xdg-user-dirs-update

# ~/.config/user-dirs.dirs
# /etc/xdg/user-dirs.defaults

set -x XDG_DESKTOP_DIR     "$HOME/Desktop"
set -x XDG_DOCUMENTS_DIR   "$HOME/Documents"
set -x XDG_DOWNLOAD_DIR    "$HOME/Downloads"
set -x XDG_MUSIC_DIR       "$HOME/Music"
set -x XDG_PICTURES_DIR    "$HOME/Pictures"
set -x XDG_PUBLICSHARE_DIR "$HOME/Public"
set -x XDG_TEMPLATES_DIR   "$HOME/Templates"
set -x XDG_VIDEOS_DIR      "$HOME/Videos"

# ---

# --- CHEAT ---
# syntax highlighting
set -x CHEATCOLORS 'true'
set -x DEFAULT_CHEAT_DIR ~/.cheat
set -x CHEATPATH $CHEATPATH $DEFAULT_CHEAT_DIR/vim
set -x CHEAT_EDITOR 'vim -p'
set -x cheatsheets '/usr/lib/python3.6/site-packages/cheat/cheatsheets'
set -x cheat $DEFAULT_CHEAT_DIR
# --- TAEHC ---

# CUSTOM

# Moving config and data to XDG directories (rather than the main user, in multiple hidden files and directories) as a principle

set -x CH "$XDG_CONFIG_HOME"
set -x C "$CH"

set -x D "$XDG_DATA_HOME"
set -x data "$D"
set -x localshare "$D"
set -x lshare "$D"

set -x c "$XDG_CACHE_HOME"

# Fish shell

set -x Fish "$C/fish"
set -x F "$Fish"

set -x fish "$F/config.fish"
set -x f "$fish"

# all completions end in .fish
set -x completions "$F/completions"
set -x fc "$completions"

# all functions end in .fish
set -x functions "$F/functions"
set -x funcd "$functions"
set -x Fu "$functions"

# My environment variables and command aliases
set -x export "$F/export.fish"
set -x alias "$F/alias"

# Ranger file manager
set -x rcd "$C/ranger"
set -x rc "$rcd/rc.conf"
set -x ranger "$rc"
set -x rcb "$rcd/bookmarks"
set -x commands "$rcd/commands.py"
set -x scope "$rcd/scope.sh"
set -x rifle "$rcd/rifle.conf"

# Cmus music player
set -x cmusd "$C/cmus"
set -x cmus "$cmusd/rc"

# Urxvt terminal
#.Xdefaults is deprecated
# xrdb -merge $C/Xresources
set -x xres  "$C/Xresources"
set -x X "$xres"
set -x urxvt "$urxvt"
set -x U "$urxvt"
set -x urxvtperl '/usr/lib/urxvt/perl/'

# ~/.urxvt/urxvtd-hostname
set -x RXVT_SOCKET "$XDG_RUNTIME_DIR/urxvtd"

# wget
set -x WGETRC "$XDG_CONFIG_HOME/wgetrc"

# Task Warrior
set -x TASKDATA "$XDG_DATA_HOME/task"
set -x TASKRC "$XDG_CONFIG_HOME/task/taskrc"

# pass
set -x PASSWORD_STORE_DIR "$XDG_DATA_HOME/pass"

# --- SYSTEM FILES ---- #
# Completitions, functions
set -x share '/usr/share'
# Examples
set -x doc "$share/doc"
set -x example "$doc"
# .desktop files
set -x applications "$share/applications"
set -x desktop "$applications"
set -x apps "$applications"
set -x A "$applications"
# header files
set -x include "/usr/include"
set -x header "$include"
# Fonts
set -x fonts "$share/fonts"
# Icons
set -x icons "$share/icons"
# Licences
set -x licences "$share/licences"
set -x lic "$licences"

set -x lib '/usr/lib/'

set -x fortune "$share/fortune"
set -x zoneinfo "$share/zoneinfo"

set -x localtime '/etc/localtime'

# log directory
set -x log "/var/log"


# --- SELIF METSYS ---- #

# set -x HISTIGNORE 'pwd:ls:ls -ll:ls -lah:ll:l:la:history:h:exit:cd:cd :clear:c:gs:gd:gc:grs:v:vpi:reload:bashrc'

set -x mpd "$C/mpd/mpd.conf"
set -x ncmpcpp "$C/ncmpcpp/config"
set -x bindings "$C/ncmpcpp/bindings"

# --- VIM ---

# set -x VIMINIT "$XDG_CONFIG_HOME/vim/vimrc"
# set -x VIMDOTDIR "$XDG_CONFIG_HOME/vim"

# set -x vim "$VIMINIT"
# set -x vimd "$VIMDOTDIR"

# set -x VIMINIT "$HOME/.vimrc"

set -x Vim "$HOME/.vim"
set -x V "$Vim"

set -x vim "$HOME/.vimrc"
set -x v "$vim"
set -x vimrc "$vim"

set -x gvim "$HOME/.gvimrc"


# --- MIV ---

set -x nbd "$C/newsbeuter"
set -x newsbeuter "$nbd/config"
set -x rss "$nbd/urls"
set -x urls "$rss"

# --- QUTE BROWSER ---

set -x qbd "$C/qutebrowser"
set -x qute "$qbd/qutebrowser.conf"
set -x keys "$qbd/keys.conf"
set -x bookmarks "$qbd/bookmarks/urls"
set -x quickmarks "$qbd/quickmarks"
set -x userscripts "$D/qutebrowser/userscripts"
set -x Q "$qute"
set -x URL "$quteb"

# --- QUTE BROWSER ---

set -x acronyms '/usr/share/misc/acronyms'
set -x comp '/usr/share/misc/acronyms.comp'

# Manual pages directory, contains multi-lingual subdirectories as well as sectional
set -x man '/usr/share/man'
set -x info '/usr/share/info'

# vim: ft=sh

set -x null '/dev/null'

# Colors
set -x skyblue '#87CEEB'
set -x gold '#FFD700'
set -x coffee  '#6F4E37'


set -x mpvd "$C/mpv"
set -x mpv "$mpvd/mpv.conf"
set -x input "$mpvd/input.conf"

set -x rtorrent "$HOME/.rtorrent.rc"
set -x rtor "$rtorrent"
set -x rtr "$rtorrent"
set -x rt "$rtorrent"

set -x spacemacs "$HOME/.spacemacs"

# Matched text color in grep
set -x GREP_COLOR '1;32'

set -x MPD_PORT 6611

set -x hist "$XDG_DATA_HOME/fish/fish_history"

# Quotation marks
set -x quote1 "“"
set -x quote2 "”"


# Solarized LS_COLOR (dircolors)

set -x LS_COLORS "no=00;38;5;244:rs=0:di=00;38;5;33:ln=00;38;5;37:mh=00:pi=48;5;230;38;5;136;01:so=48;5;230;38;5;136;01:do=48;5;230;38;5;136;01:bd=48;5;230;38;5;244;01:cd=48;5;230;38;5;244;01:or=48;5;235;38;5;160:su=48;5;160;38;5;230:sg=48;5;136;38;5;230:ca=30;41:tw=48;5;64;38;5;230:ow=48;5;235;38;5;33:st=48;5;33;38;5;230:ex=00;38;5;64:*.tar=00;38;5;61:*.tgz=00;38;5;61:*.arj=00;38;5;61:*.taz=00;38;5;61:*.lzh=00;38;5;61:*.lzma=00;38;5;61:*.tlz=00;38;5;61:*.txz=00;38;5;61:*.zip=00;38;5;61:*.z=00;38;5;61:*.Z=00;38;5;61:*.dz=00;38;5;61:*.gz=00;38;5;61:*.lz=00;38;5;61:*.xz=00;38;5;61:*.bz2=00;38;5;61:*.bz=00;38;5;61:*.tbz=00;38;5;61:*.tbz2=00;38;5;61:*.tz=00;38;5;61:*.deb=00;38;5;61:*.rpm=00;38;5;61:*.jar=00;38;5;61:*.rar=00;38;5;61:*.ace=00;38;5;61:*.zoo=00;38;5;61:*.cpio=00;38;5;61:*.7z=00;38;5;61:*.rz=00;38;5;61:*.apk=00;38;5;61:*.gem=00;38;5;61:*.jpg=00;38;5;136:*.JPG=00;38;5;136:*.jpeg=00;38;5;136:*.gif=00;38;5;136:*.bmp=00;38;5;136:*.pbm=00;38;5;136:*.pgm=00;38;5;136:*.ppm=00;38;5;136:*.tga=00;38;5;136:*.xbm=00;38;5;136:*.xpm=00;38;5;136:*.tif=00;38;5;136:*.tiff=00;38;5;136:*.png=00;38;5;136:*.PNG=00;38;5;136:*.svg=00;38;5;136:*.svgz=00;38;5;136:*.mng=00;38;5;136:*.pcx=00;38;5;136:*.dl=00;38;5;136:*.xcf=00;38;5;136:*.xwd=00;38;5;136:*.yuv=00;38;5;136:*.cgm=00;38;5;136:*.emf=00;38;5;136:*.eps=00;38;5;136:*.CR2=00;38;5;136:*.ico=00;38;5;136:*.tex=00;38;5;245:*.rdf=00;38;5;245:*.owl=00;38;5;245:*.n3=00;38;5;245:*.ttl=00;38;5;245:*.nt=00;38;5;245:*.torrent=00;38;5;245:*.xml=00;38;5;245:*Makefile=00;38;5;245:*Rakefile=00;38;5;245:*Dockerfile=00;38;5;245:*build.xml=00;38;5;245:*rc=00;38;5;245:*1=00;38;5;245:*.nfo=00;38;5;245:*README=00;38;5;245:*README.txt=00;38;5;245:*readme.txt=00;38;5;245:*.md=00;38;5;245:*README.markdown=00;38;5;245:*.ini=00;38;5;245:*.yml=00;38;5;245:*.cfg=00;38;5;245:*.conf=00;38;5;245:*.h=00;38;5;245:*.hpp=00;38;5;245:*.c=00;38;5;245:*.cpp=00;38;5;245:*.cxx=00;38;5;245:*.cc=00;38;5;245:*.objc=00;38;5;245:*.sqlite=00;38;5;245:*.go=00;38;5;245:*.sql=00;38;5;245:*.csv=00;38;5;245:*.log=00;38;5;240:*.bak=00;38;5;240:*.aux=00;38;5;240:*.lof=00;38;5;240:*.lol=00;38;5;240:*.lot=00;38;5;240:*.out=00;38;5;240:*.toc=00;38;5;240:*.bbl=00;38;5;240:*.blg=00;38;5;240:*~=00;38;5;240:*#=00;38;5;240:*.part=00;38;5;240:*.incomplete=00;38;5;240:*.swp=00;38;5;240:*.tmp=00;38;5;240:*.temp=00;38;5;240:*.o=00;38;5;240:*.pyc=00;38;5;240:*.class=00;38;5;240:*.cache=00;38;5;240:*.aac=00;38;5;166:*.au=00;38;5;166:*.flac=00;38;5;166:*.mid=00;38;5;166:*.midi=00;38;5;166:*.mka=00;38;5;166:*.mp3=00;38;5;166:*.mpc=00;38;5;166:*.ogg=00;38;5;166:*.opus=00;38;5;166:*.ra=00;38;5;166:*.wav=00;38;5;166:*.m4a=00;38;5;166:*.axa=00;38;5;166:*.oga=00;38;5;166:*.spx=00;38;5;166:*.xspf=00;38;5;166:*.mov=00;38;5;166:*.MOV=00;38;5;166:*.mpg=00;38;5;166:*.mpeg=00;38;5;166:*.m2v=00;38;5;166:*.mkv=00;38;5;166:*.ogm=00;38;5;166:*.mp4=00;38;5;166:*.m4v=00;38;5;166:*.mp4v=00;38;5;166:*.vob=00;38;5;166:*.qt=00;38;5;166:*.nuv=00;38;5;166:*.wmv=00;38;5;166:*.asf=00;38;5;166:*.rm=00;38;5;166:*.rmvb=00;38;5;166:*.flc=00;38;5;166:*.avi=00;38;5;166:*.fli=00;38;5;166:*.flv=00;38;5;166:*.gl=00;38;5;166:*.m2ts=00;38;5;166:*.divx=00;38;5;166:*.webm=00;38;5;166:*.axv=00;38;5;166:*.anx=00;38;5;166:*.ogv=00;38;5;166:*.ogx=00;38;5;166:"

# My custom Vim source files
set -x chinggis "$HOME/.vim/chinggis"
set -x rev "$chinggis/reverse.vim"
set -x fkeys "$chinggis/fkeys.vim"
set -x tab "$chinggis/tabular.vim"
set -x buf "$chinggis/buffers.vim"

set -x rofi "$C/rofi.theme"

set -x termite "$C/termite/config"

set -x mutt "$HOME/.muttrc"
set -x muttd "$HOME/.mutt"

set -x phpini '/etc/php/php.ini'
set -x mycnf '/etc/mysql/my.cnf'

# GNU Readline
# Read by bash, mysql etc
set -x INPUTRC "$XDG_CONFIG_HOME/readline/inputrc"

# COLOR LESS (for man pages)
# https://linuxtidbits.wordpress.com/2009/03/23/less-colors-for-man-pages/

# set -x LESS_TERMCAP_mb (printf "\033[01;31m")  
# set -x LESS_TERMCAP_md (printf "\033[00;38;5;166")  
# set -x LESS_TERMCAP_me (printf "\033[0m")  
# set -x LESS_TERMCAP_se (printf "\033[0m")  
# set -x LESS_TERMCAP_so (printf "\033[00;38;5;166")  
# set -x LESS_TERMCAP_ue (printf "\033[0m")  
# set -x LESS_TERMCAP_us (printf "\033[04;38;5;146m") 

set -x MANPAGER 'most'

# --- Most pager --
set -x MOST_INITFILE "$XDG_CONFIG_HOME/most/mostrc"
set -x MOST_EDITOR 'vim -p'
# Squeeze, single blank lines
# Deletable, asks for confirmation on attempt
set -x MOST_SWITCHES '-s +d'

set -x most "$C/most/mostrc"
set -x mostrc "$most"

set -x bash "$HOME/.bashrc"
set -x bashrc "$bash"
set -x profile "$HOME/.profile"

set -x weechat "$HOME/.weechat/alias.conf"

set -x ignore "$HOME/.gitignore"
set -x gitconfig "$HOME/.gitconfig"
set -x gcfg "$gitconfig"

set -x userscripts "$HOME/.local/share/qutebrowser/userscripts"

set -x task "$TASKRC"
set -x taskrc "$task"
set -x tasks "$TASKDATA"
set -x taskdata "$tasks"
set -x taskd "$C/task"

set -x rtorrent "$HOME/.rtorrent.rc"
set -x torrent "$rtorrent"

set -x icloud "$HOME/.mutt/accounts/icloud"

set -x w3m "$HOME/.w3m/config"
set -x keymap "$HOME/.w3m/keymap"

set -x pqiv "$HOME/.pqivrc"

set -x resd "$HOME/.res"
set -x resume "$resd/Resume.md"
set -x res "$resume"

# timedatectl of systemd
# /etc/localtime
# tzselect of glibc
# set -x TZ


set -x abookd "$HOME/.abook"
set -x abook "$abookd/abookrc"
set -x abookrc "$abook"
set -x addressbook "$abookd/addressbook"

set -x PASSWORD_STORE_X_SELECTION 1

set -x zathura "$C/zathura/zathurarc"
set -x zath "$zathura" 
# set -x FZF_DEFAULT_COMMAND 'ag --hidden --ignore .git -g ""'
set -x FZF_DEFAULT_COMMAND 'rg --hidden -e ""'

set -x vimperator "$HOME/.vimperatorrc"
set -x vimp "$vimperator"
set -x vimperatord "$HOME/.vimperator"
set -x vimpd "$vimperatord"

set -x readme "$HOME/README.md"

set -x spell "$HOME/.vim/spell/en.utf-8.add"

# Function names
set -x fukb fish_user_key_bindings

# SQLite
set -x sqlite "$HOME/.sqliterc"
set -x sqliterc "$sqlite"
set -x sqliteh "$HOME/.sqlite_history"
set -x sqlhist "$sqliteh"
set -x ssqlh "$sqliteh"

# Readline
set -x readline "$C/readline/inputrc"
set -x inputrc "$readline"
set -x input "$readline"

# Ignore duplicates and lines starting with space
# igoredups, ignorespace
set -x HISTCONTROL 'ignoreboth'

set -x ssh "$HOME/.ssh/config"

set -x geography 'User:Chinggis6/Project Geography'
set -x geo "$geography"
set -x gallery 'User:Chinggis6/Tengerid Gallery'
set -x gal "$gallery"

set -x scrot "$HOME/.scrot"

# rlwrap
set -x RLWRAP_HOME "$XDG_CONFIG_HOME/rlwrap"
set -x INPUTRC "$XDG_CONFIG_HOME/readline/inputrc"

set -x rlwrap "$RLWRAP_HOME"
set -x sqlitec "$RLWRAP_HOME/sqlite3_completion"

set -x lyrics "$HOME/.lyrics"

# eg: sed "/s/$alpha/*"
# -i in-place replacement in file, -f sedscript (file with sed commands inside)
# * asterisk with or without the last character
# /Thr*/ Thr or Th
# \w* for word, \w*. first word
# \b boundary '\bword\b' new newer by default would match both new and newer
# ^beg, end$, ;another statement, & matched string (match)
# p print matches only, I ignore case (case-Insensitive), d delete matching line
# '5,$ d' delete from 5th to last line, q quit
# sed -n '$=' print last line number (count of lines), = print line number before each line
# 'n;d' delete every other line (even lines such as 2,4,6 ...)
set -x letters '[a-Z]'
set -x letter "$letters"
set -x alphanumeric '[0-Z]'
set -x alpha "$alphanumeric"

set -x draft "$HOME/DRAFT.md"
set -x sites "$HOME/.frontpage/sites.md"

# http://www.sherv.net/text/emoticons/devil.hand.sign-4573
set -x dhs '\m/ (   `◉ _◉´)  \m/'

# tmux prefix
# to insert in Vim with C-r =$backtick
set -x backtick '`'
set -x bt "$backtick"

set -x aria2 "$C/aria2/aria2.conf"
set -x aria "$aria2"
set -x aria2d "$C/aria2"
set -x ariad "$aria2d"

set -x redshift "$C/redshift.conf"

set -x qutedesktop "$A/qutebrowser.desktop"
set -x qutedesk "$qutedesktop"
set -x qutedsk "$qutedesktop"

set -x watch "$HOME/.watch"
set -x W "$watch"

# set_color
set -x fish_color_history_current 'brcyan'

# $status is $? in fish for error code (0 executed successfully, 127 command failed to execute)
# set -q (--query) ouputs amount of unset variables in the query

# .gpg
set -x pass "$D/pass"

set -x firefox_plugins '/usr/lib64/mozilla/plugins'
set -x plugins "$firefox_plugins"
set -x chrome_plugins '/opt/google/chrome/plugins'
set -x chromeplug "$chrome_plugins"

# set -x NNTPSERVER 'http://www.eternal-september.org/'
# set -x NNTPSERVER 'http://news.aioe.org/'
# set -x NNTPSERVER 'free.xsusenet.com'
set -x NNTPSERVER 'weathergirl-ipv6.tele2.net'
set -x NNTPPORT 119

set -x down "$HOME/.down"

set -x freenode 'chat.freenode.net'

set -x i "$HOME/.info"
set -x eth 'Broadcom NetXtreme BCM5761'


set -x xserver "$HOME/.xserverrc"
set -x xinit "$HOME/.xinitrc"

# ---
# X server and client configuration
# ----
set -x x11 '/etc/X11'
set -x X11 "$x11"
set -x xinit "$x11/xinit"
set -x gxinit "$xinit/xinitrc"
set -x gxserver "$xinit/xserverrc"
# ---

# Gnome Session
set -x autostart "$CH/autostart"

set -x home '/home/chinggis'
set -x chinggis "$home"

set -x scripts "$HOME/.scripts"

set -x music 'programming music dark minds'
set -x music2 'chillout mix 2018'
