#!/usr/bin/env bash
ID=$(xinput |grep -Eo 'Touchpad.*id=[0-9]*'|grep -o '[0-9]*')
STATUS=$(xinput list-props $ID|grep -o 'Tapping Enabled.([0-9]*)'|grep -o '[0-9]*')
xinput set-prop $ID $STATUS 1
