#!/bin/fish

# Easily copy and paste User/Repo for adding Vim plugins
# Vim Plug syntax:
# Plug 'User/Repo'
# Note that it is SINGLE quotes and it won't work if surrounded by double quotes

string sub --start 20 "$QUTE_URL" | xsel -p; and echo "message-info 'Title yanked!'" >> "$QUTE_FIFO"
