#!/bin/bash

echo "separator=true
separator_block_width=15

[time]
command=date '+%Y-%m-%d %H:%M                                                                     '
interval=1

[cpu]
command=~/.config/i3blocks/scripts/cpu.sh
interval=5

[ram]
command=~/.config/i3blocks/scripts/ram.sh
interval=1

[volume]
command=~/.config/i3blocks/scripts/volume.sh
interval=1
" > /home/zed/.config/i3blocks/i3blocks.conf

xrandr --output DVI-D-0 --off --output HDMI-0 --off --output DP-0 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --off --output None-1-1 --off

# xrandr --output DVI-D-0 --mode 1920x1080 --pos 0x0 --output HDMI-0 --off

# nouveau
# xrandr --output DP-1 --off --output HDMI-1 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-2 --off --output DP-3 --off

# nvidia
# xrandr --output DP-0 --off --output DP-1 --off --output HDMI-0 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-2 --off --output DP-3 --off --output DP-4 --off --output DP-5 --off --output None-1-1 --off
# new
# xrandr --output DP-0 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-0 --off --output DP-2 --off --output DP-3 --off --output DP-4 --off --output DP-5 --off --output None-1-1 --off


source ~/.config/scripts/last-single-wallpapers.sh

i3-msg restart
