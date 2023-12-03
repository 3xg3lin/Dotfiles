#!usr/bin/env bash
killall xwinwrap 
xwinwrap -fs -fdt -ni -b -nf -un -o 1.0 -debug -- mpv -wid WID --loop --no-audio ~/Videos/Link-Click.mp4
