#!/bin/bash

xrandr --output DVI-D-0 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-0 --off --output DP-0 --off --output DP-1 --off

source ~/.config/scripts/last-single-wallpapers.sh

# i3-msg restart
