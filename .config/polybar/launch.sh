#!/usr/bin/env bash
#==========================================================
#
#   ══╗   ╲╱  ╔══   ══╗ ║     ╸ ║  ╱║
#   ══╣   ╱╲  ║ ═╗  ══╣ ║     ║ ║ ╱ ║
#   ══╝       ╚══╝  ══╝ ╚═══  ║ ║╱  ║
#
#   Modification by     -    3xg3lin
#   Source              -    https://github.com/3xg3lin/dotfiles
#
#==========================================================


# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar centerbar 2>&1 | tee -a /tmp/polybar.log & disown
polybar mybar 2>&1 | tee -a /tmp/polybar.log & disown
polybar example 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."
