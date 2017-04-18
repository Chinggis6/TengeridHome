# Vi modes for command line
set fish_vi_keybindings

# Remove greeting
set fish_greeting ''

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
setxkbmap -option caps:swapescape

# Unbind Backspace in terminal
stty erase undef
