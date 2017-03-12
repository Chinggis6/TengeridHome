#!/bin/fish

# Save URL in a file (.url)

# chmod +x
# bind --force <ctrl-f1> spawn --userscript uselang

set file (basename $QUTE_URL .html)
echo "$QUTE_URL" > "$HOME/.study/$file.url"; and echo "message-info 'URL saved!'"  >> $QUTE_FIFO
