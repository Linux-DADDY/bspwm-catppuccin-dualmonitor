#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar on monitor 1
polybar -c ~/.config/bspwm/polybar/polybar_monitor1.conf &

# Launch Polybar on monitor 2
polybar -c ~/.config/bspwm/polybar/polybar_monitor2.conf &

echo "Polybar launched..."
