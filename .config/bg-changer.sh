#!/usr/bin/bash
PICTURE=$(ls ~/Pictures|shuf -n 1)
WHICHPIC=$(cat ~/.config/rofi/config.rasi|grep -o 'guweiz[0-9]*.jpg')
sed -i "s/$WHICHPIC/$PICTURE/g" ~/.config/rofi/config.rasi ~/.config/rofi/powermenu/powerconfig.rasi
feh --bg-fill  ~/Pictures/$PICTURE
betterlockscreen -u ~/Pictures/$PICTURE
(cat $HOME/.cache/wal/sequences &)
wal -i ~/Pictures/$PICTURE -q
PRIMARY=$(grep -i "color1='#[0-9,A-Z,a-z]*'" ~/.cache/wal/colors.sh|grep -o "#[0-9,A-Z,a-z]*")
sed -i -e "s/%{F#[0-9,A-Z]*}/%{F$PRIMARY}/g" $HOME/.config/polybar/config.ini
polybar-msg cmd restart
