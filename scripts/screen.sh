#!/bin/bash
# Script that runs the required xrandr command according to displays connected.
# It also starts polybar on the display(s) and restarts the compton compositor and flashfocus.
# This script is called in the wm startup file.


killall polybar

case "$1" in
    "dock")
    echo "DOCK MODE"

    # enable external screens
    # two xradnr commands needed, otherwise it crashed the x server
    xrandr --output eDP-1 --primary --mode 1920x1080 --pos 3840x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off --output DP-1-1 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1-2 --off --output DP-1-3 --mode 1920x1080 --pos 1920x0 --rotate normal

    # disable internal screen
    xrandr --output eDP-1 --off --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off --output DP-1-1 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1-2 --off --output DP-1-3 --mode 1920x1080 --pos 1920x0 --rotate normal

    # set up workspaces for monitors
    bspc monitor DP-1-1 -d 1 2 3 4 5 6 7 8 9 10
    bspc monitor DP-1-3 -d 1 2 3 4 5 6 7 8 9 10
    bspc monitor eDP-1 -r
    bspc config window_gap 15
    ;;
    "present")

    ;;
    *)
    echo "INTERNAL SCREEN MODE"
    xrandr\
        --output eDP-1 --primary --mode 1920x1080 --pos 42x1080 --rotate normal \
        --output DP-1 --off \
        --output DP-2 --off \
        --output HDMI-1 --off \
        --output HDMI-2 --off \
        --output DP-1-1 --off \
        --output DP-1-2 --off \
        --output DP-1-3 --off
    
    bspc monitor eDP-1 -d 1 2 3 4 5 6 7 8 9 10
    bspc monitor DP-1-1 -r
    bspc monitor DP-1-3 -r
    bspc config window_gap 5
    pulsemixer --mute # mute volume
    ;;
esac

#SC=$(xrandr | grep -sw 'connected' | wc -l)
#if test "$SC" -eq 1
#then
#  xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --output HDMI-1 --off
#  bspc monitor HDMI-1 -r
#fi
#if test "$SC" -eq 2
#then
#  xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x1080 --output HDMI-1 --mode 1920x1080 --pos 0x0
#  polybar second &
#fi
# bspc monitor HDMI-1 -d 1 2 3 4 5 6 7 8 9 10

# start polybar on every monitor
for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload bottom &
done

# restart compton
pkill compton
compton &

# start/restart flashfocus
# pkill flashfocus
# flashfocus &

sh ~/scripts/setbg

