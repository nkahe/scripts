#!/bin/sh
# Start Kitty with default session. If restoring session is used in KDE,
# Kitty needs to be blacklisted so only one instance is created.

file=~/.local/state/kitty/sessions/main.kitty-session
# file=/home/henri/.config/kitty/default.kitty-session
if [ -f "$file" ]; then
  kitty --session "$file"
fi
