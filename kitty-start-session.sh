#!/bin/sh
# Start Kitty with default session. If restoring session is used in KDE,
# Kitty needs to be blacklisted so only one instance is created.

file=/home/henri/.config/kitty/default.kitty-session
if [ -f "$file" ]; then
  kitty --session "$file"
fi
