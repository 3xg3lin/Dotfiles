#!/usr/bin/bash
PICTURE=$(cat /etc/lightdm/lightdm-gtk-greeter.conf |grep -o "guweiz[0-9]*.jpg")
WHICHPIC=$(cat ~/.config/rofi/config.rasi|grep -o 'guweiz[0-9]*.jpg')
wal -i ~/Pictures/$PICTURE -q && $HOME/.config/polybar/walpoly.sh 
COLORID=$(cat $HOME/.cache/wal/colors.sh |grep -o "color1='#[0-9,A-Z]*'"|grep -o '#[0-9,A-Z]*')
sed -i "323s/#[0-9,A-Z,a-z]*/$COLORID/" .config/dunst/dunstrc
sed -i "s/$WHICHPIC/$PICTURE/g" ~/.config/rofi/config.rasi ~/.config/rofi/powermenu/powerconfig.rasi
feh --bg-fill  ~/Pictures/$PICTURE
#feh --bg-fill ~/Pictures/black-screen.jpg
systemctl restart --user dunst.service &
betterlockscreen -u ~/Pictures/$PICTURE
