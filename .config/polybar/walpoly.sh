#!/usr/bin/bash
sleep 10
PRIMARY=$(grep -i "color1='#[0-9,A-Z,a-z]*'" ~/.cache/wal/colors.sh|grep -o "#[0-9,A-Z,a-z]*")
sed -i -e "s/%{F#[0-9,A-Z]*}/%{F$PRIMARY}/g" $HOME/.config/polybar/config.ini
polybar-msg cmd restart