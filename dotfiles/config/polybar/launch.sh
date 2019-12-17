#!/usr/bin/env bash

#terminate all running instances
killall -q polybar

#wait until the processes have stoped
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar bar1 >> /tmp/polybar1.log 2>&1 &
polybar bar2 >> /tmp/polybar2.log 2>&1 &
polybar bar3 >> /tmp/polybar3.log 2>&1 &

echo "Bars launched..."
