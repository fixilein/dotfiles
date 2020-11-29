#!/usr/bin/env bash
# requires xorg-xmodmap xorg-xev xorg-setxkbmap xorg-xset

# reset modmap
setxkbmap

# MANUALY map CAPS LOCK to ESCAPE
#xmodmap -e 'keycode 66 = Escape'
# disable CAPS LOCK 
#xmodmap -e 'clear lock'

# set caps-lock key to escape (escape is still escape)
# xmodmap -e 'keycode 66 = Escape'

# Right Menu key is now Caps-lock key.
# xmodmap -e 'keycode 135 = Caps_Lock'

# SWAP ESCAPE AND CAPS LOCK
# setxkbmap -option caps:swapescape

