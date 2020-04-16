#!/usr/bin/env bash
# requires xorg-xmodmap xorg-xev xorg-setxkbmap xorg-xset

# reset modmap
setxkbmap

# MANUALY map CAPS LOCK to ESCAPE
#xmodmap -e 'keycode 66 = Escape'
# disable CAPS LOCK 
#xmodmap -e 'clear lock'

# SWAP ESCAPE AND CAPS LOCK
setxkbmap -option caps:swapescape
