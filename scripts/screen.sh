#!/bin/bash
# Script that runs the required xrandr command according to displays connected.
# It also starts polybar on the display(s) and restarts the compton compositor and flashfocus.
# This script is called in the i3 config as an exec-always with no-startup-id.

SC=$(xrandr | grep -sw 'connected' | wc -l)

pkill polybar
polybar bottom &

if test "$SC" -eq 1
then
  xrandr --output VIRTUAL1 --off --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --off --output HDMI2 --off --output HDMI1 --off --output DP2 --off
fi

if test "$SC" -eq 2
then
xrandr --output eDP1 --primary --mode 1920x1080 --pos 0x1080 --rotate normal --output DP1 --off --output DP2 --off --output HDMI1 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI2 --off --output VIRTUAL1 --off
polybar second &

fi

# restart compton
pkill compton
compton -f -b

# start/restart flashfocus
pkill flashfocus
flashfocus &
