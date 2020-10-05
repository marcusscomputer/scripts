#!/bin/bash
scrot /tmp/scr.png
convert -scale 10% -blur 0x2.5 -resize 1000% /tmp/scr.png /tmp/scr_lock.png
rm -rf /tmp/scr.png
i3lock -i /tmp/scr_lock.png
systemctl suspend
