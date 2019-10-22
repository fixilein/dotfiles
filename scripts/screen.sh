#!/bin/bash

SC=$(xrandr | grep -sw 'connected' | wc -l) 
# echo $SC

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar bottom &

# ext 
if test "$SC" -eq 1
then
  xrandr --output VIRTUAL1 --off --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --off --output HDMI2 --off --output HDMI1 --off --output DP2 --off
fi

if test "$SC" -eq 2
then 
xrandr --output eDP1 --primary --mode 1920x1080 --pos 0x1080 --rotate normal --output DP1 --off --output DP2 --off --output HDMI1 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI2 --off --output VIRTUAL1 --off
polybar second &

fi

