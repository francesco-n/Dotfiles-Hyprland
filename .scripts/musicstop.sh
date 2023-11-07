#!/bin/bash

activews=$(hyprctl activeworkspace | sed -r "/ID/ q" | sed  "s/workspace ID \([0-9][0-9]*\).*/\1/")

killall -9 cava
killall -9 ncmpcpp
killall -9 peaclock

hyprctl dispatch workspace 17
sleep .1
hyprctl dispatch killactive
sleep .1
hyprctl dispatch killactive
sleep .1
hyprctl dispatch killactive
sleep .1

hyprctl dispatch workspace $activews
