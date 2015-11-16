#!/bin/bash
maim /tmp/screen.png
convert /tmp/screen.png -scale 5% -scale 2020% /tmp/screen.png
convert -gravity center -composite /tmp/screen.png \
~/.config/i3/i3lock/lock.png /tmp/screen.png
i3lock -u -i /tmp/screen.png
rm /tmp/screen.png