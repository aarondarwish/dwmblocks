#!/bin/sh

# case $BLOCK_BUTTON in
# 	1) notify-send "š„ CPU hogs" "$(ps axch -o cmd:15,%cpu --sort=-%cpu | head)\\n(100% per core)" ;;
# 	2) setsid -f "$TERMINAL" -e htop ;;
# 	3) notify-send "š„ CPU module " "\- Shows CPU temperature.
# - Click to show intensive processes.
# - Middle click to open htop." ;;
# 	6) "$TERMINAL" -e "$EDITOR" "$0" ;;
# esac

nvidia-smi | rg '\d+C' | awk ' {print " | GPU: ļ" $3 "  -      "}' 
# sensors | awk '/Core 0/ {print "š”" $3}'
# My own accretion (Aaron D.)
#sensors | rg '\+\d+\.\dĀ°C'
