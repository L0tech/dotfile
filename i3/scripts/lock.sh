#!/bin/bash
# suspend message display
pkill -u "$USER" -USR1 dunst

# lock the screen
~/.config/i3/scripts/lock

# resume message display
pkill -u "$USER" -USR2 dunst
