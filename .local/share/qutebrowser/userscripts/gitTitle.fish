#!/bin/fish

string sub --start 20 "$QUTE_URL" | xsel -p; and echo "message-info 'Title yanked!'" >> "$QUTE_FIFO"
