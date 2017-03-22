# Weechat / IRC

# Place status bar at top instead of bottom
/set weechat.bar.status.position top

# Change nick color
/set weechat.color.chat_nick_self lightcyan

# Set 

# Show user nicknames and number in channel
/names

# Set a nickname
/nick

# Connect servers
/connect 

# Join channels
/join
-server
/join -server oftc #linux
C-x to change between in the main buffer

# Sign up
/msg nickserv register

# Log in
/msg nickserv identify

# PM user
/query

# Close buffers
/close

# Leave channels
/part

# Look up the user, what channels he's in, username, and IP
/whois

# Dont's see user's messages
/ignore add

# Save options to config files
/save

# Plugins

> autojoinem.py, vimode.py

/scripts

---

# Add channels to the autojoin list
/autojoinem add

# Delete channels from the autojoin list
/autojoinem del

# Status messages
> * Username does something
/me

# User info
/msg NickServ info <nick>

# CLOAK (@unaffilated)
Ask for in #freenode

# Clean screen
/cl

# GROUP (multiple nicknames)
/msg nickserv help group
/nick newnick
/msg nickserv identify oldnick password
/msg nickserv group

# GITTER
> go to irc.gitter.im and login to take token as password to input
/server add gitter irc.gitter.im -ssl -ssl_verify -ssl_dhkey_size=1024 -password=
/connect gitter
/set irc.server.gitter.nicks "YOUR_NICK"

# Save config
> Before exit
> https://robots.thoughtbot.com/weechat-for-slacks-irc-gateway
/save

# Save layout

/layout store

# Window commands

/window b1
/buffer archlinux
/window left
/window splitv
> Swap buffer number x with number y, or with the current one
/buffer swap 5 [8]
/buffer move -1/+1 move buffer up/down through the list (renumbering)

# Shortcuts
^n - next buffer
^p - prev buffer

F9/F10 - Cycle through title line (status, topic)
F11/12 - Cycle through nick list (users)

# Alias
/alias add bs /buffer swap

^r - Search Mode
^q - Exit Search Mode
