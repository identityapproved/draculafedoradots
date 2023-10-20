#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
killall -q i3bar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar
echo "---" | tee -a /tmp/polybar.log
polybar draculabar 2>&1 | tee -a /tmp/polybar.log & disown

echo "Draculabar launched..."
