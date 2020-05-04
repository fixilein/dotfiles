#!/bin/bash
# Script that runs the required xrandr command according to displays connected.
# It also starts polybar on the display(s) and restarts the compton compositor and flashfocus.
# This script is called in the wm startup file.

SC=$(xrandr | grep -sw 'connected' | wc -l)

killall polybar
pkill i3icons2


polybar bottom &

if test "$SC" -eq 1
then
  xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --output HDMI-1 --off
  bspc monitor HDMI-1 -r
fi


if test "$SC" -eq 2
then
  xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x1080 --output HDMI-1 --mode 1920x1080 --pos 0x0
  polybar second &
fi

bspc monitor eDP-1 -d 1 2 3 4 5 6 7 8 9 10
bspc monitor HDMI-1 -d 1 2 3 4 5 6 7 8 9 10

# restart compton
pkill compton
compton &

# start/restart flashfocus
# pkill flashfocus
# flashfocus &

setgb

