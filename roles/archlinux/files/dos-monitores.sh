#!/usr/bin/env sh

IN="eDP1"
#EXT="DP-1"
#IN="LVDS1"
EXT="HDMI2"

if (xrandr | grep "${EXT} disconnected"); then
    xrandr --output $IN --auto $EXT --off
    #feh  --bg-fill $HOME/Pictures/wallpapers/wolf-in-sheep-clothes.jpg
    feh --bg-fill $HOME/Pictures/wallpapers/tank-blueprint-digital-art-hd-wallpaper-1920x1200-5052.jpg
else
    xrandr --output $IN --auto --output $EXT --auto --right-of $IN
    #feh  --bg-fill $HOME/Pictures/wallpapers/BlackMarble_2016_01deg.jpg $HOME/Pictures/wallpapers/ships.jpg
    feh --bg-fill $HOME/Pictures/wallpapers/tank-blueprint-digital-art-hd-wallpaper-1920x1200-5052.jpg
fi

