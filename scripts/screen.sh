#!/bin/bash
# Script that runs the required xrandr command according to displays connected.
# It also starts polybar on the display(s) and restarts the compton compositor and flashfocus.
# This script is called in the i3 config as an exec-always with no-startup-id.

SC=$(xrandr | grep -sw 'connected' | wc -l)

killall polybar
pkill i3icons2

if test "$SC" -eq 1
then
  xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --output HDMI-1 --off
  polybar bottom &
fi


if test "$SC" -eq 2
then
  xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x1080 --output HDMI-1 --mode 1920x1080 --pos 0x0
  polybar bottom &
  polybar second &
fi

# restart compton
pkill compton
compton -b

# start/restart flashfocus
# pkill flashfocus
# flashfocus &

# reset wallpaper
wal -R -q

