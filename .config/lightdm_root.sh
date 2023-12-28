#!/bin/bash
PICTURE=$(ls /usr/share/backgrounds/archlinux/ |shuf -n 1)
WHICHPIC=$(cat /etc/lightdm/lightdm-gtk-greeter.conf|grep -o 'guweiz[0-9]*.jpg')
sed -i "s/$WHICHPIC/$PICTURE/g" /etc/lightdm/lightdm-gtk-greeter.conf
#don't foget to add greeter-setup-script in lightdm.conf
