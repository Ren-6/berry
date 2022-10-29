#!/bin/bash

make || exit 1
killall sxhkd

Xephyr -screen 900x540 +xinerama :80 &
sleep 1

export DISPLAY=:80
sxhkd -c examples/sxhkdrc &

while sleep 1; do berry -c examples/autostart ; done
