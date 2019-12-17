#!/usr/bin/env sh
TRIGGER="  - trigger: \":$1\""
IMG="    image_path: \"$(ls $HOME/Pictures/memes/$1.*)\""
echo "$TRIGGER" >> ~/.config/espanso/default.yml
echo "$IMG" >> ~/.config/espanso/default.yml
espanso restart
