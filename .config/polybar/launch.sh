#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
# Launch bar1 and bar2
# echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
# polybar example 2>&1 | tee -a /tmp/polybar1.log & disown
polybar example -c ~/.config/polybar/config &

polybar external -c ~/.config/polybar/config &


polybar show-date -c ~/.config/polybar/config &

polybar ethernet -c ~/.config/polybar/config &

polybar vpn-status -c ~/.config/polybar/config &

polybar htb -c ~/.config/polybar/config &

polybar system -c ~/.config/polybar/config &


