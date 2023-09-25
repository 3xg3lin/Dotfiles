#!/usr/bin/bash
PICTURE=$(cat /etc/lightdm/lightdm-gtk-greeter.conf |grep -o "guweiz[0-9]*.jpg")
WHICHPIC=$(cat ~/.config/rofi/config.rasi|grep -o 'guweiz[0-9]*.jpg')
wal -i ~/Pictures/$PICTURE -q && $HOME/.config/polybar/walpoly.sh 
sed -i "s/$WHICHPIC/$PICTURE/g" ~/.config/rofi/config.rasi ~/.config/rofi/powermenu/powerconfig.rasi
feh --bg-fill  ~/Pictures/$PICTURE
betterlockscreen -u ~/Pictures/$PICTURE
