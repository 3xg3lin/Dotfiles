#!/bin/bash
PICTURE=$(cat /etc/lightdm/lightdm-gtk-greeter.conf |grep -o "guweiz[0-9]*.jpg")
WHICHPIC=$(cat ~/.config/rofi/config.rasi|grep -o 'guweiz[0-9]*.jpg')
sed -i "s/$WHICHPIC/$PICTURE/g" ~/.config/rofi/config.rasi ~/.config/rofi/powermenu/powerconfig.rasi
feh --bg-fill  ~/Pictures/$PICTURE
betterlockscreen -u ~/Pictures/$PICTURE
echo "$HOME/Pictures/$PICTURE" > $HOME/.cache/wal/wal
