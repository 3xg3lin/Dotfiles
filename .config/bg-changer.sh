#!/usr/bin/bash
PICTURE=$(ls ~/Pictures|shuf -n 1)
WHICHPIC=$(cat ~/.config/rofi/config.rasi|grep -o 'guweiz[0-9]*.jpg')
sed -i "s/$WHICHPIC/$PICTURE/g" ~/.config/rofi/config.rasi ~/.config/rofi/powermenu/powerconfig.rasi
feh --bg-fill  ~/Pictures/$PICTURE
betterlockscreen -u ~/Pictures/$PICTURE
(cat $HOME/.cache/wal/sequences &)
wal -i ~/Pictures/$PICTURE -q
