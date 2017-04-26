# Remove greeting
set fish_greeting 'Fish at your service, please refer to $CH/fish/config.fish for reconfiguration. Also consider running tmux first.'

# Source environment variables
source "$HOME/.config/fish/export.fish"

# Source aliases
source "$HOME/.config/fish/alias"

# Zero brightness
# brightness

# No cursor blinking
cursor

# Turn off NumLock key
numlockx off

# Swap Escape key with Caps Lock
# setxkbmap -option caps:swapescape
# ^ USE CTRL-[ (Control Left Bracket (US))

# Unbind Backspace in terminal
stty erase undef

source "$HOME/.info"

# Vi modes for command line
set fish_vi_keybindings
