#!/bin/bash
# __        __    _ _                              
# \ \      / /_ _| | |_ __   __ _ _ __   ___ _ __  
#  \ \ /\ / / _` | | | '_ \ / _` | '_ \ / _ \ '__| 
#   \ V  V / (_| | | | |_) | (_| | |_) |  __/ |    
#    \_/\_/ \__,_|_|_| .__/ \__,_| .__/ \___|_|    
#                    |_|         |_|               
#  
# by Stephan Raabe (2023) 
# ----------------------------------------------------- 

# Select wallpaper
selected=$(ls -1 ~/Pictures/Wallpapers | rofi -dmenu -config ~/.config/rofi/config-wallpaper.rasi -p "Wallpapers")

if [ "$selected" ]; then

    echo "Changing theme..."
    # Update wallpaper with pywal
    wal  -q -i ~/Pictures/Wallpapers/$selected -n #aggiungere -l se si vuole un tema chiaro

    hyprctl hyprpaper preload $HOME/Pictures/Wallpapers/$selected
    sleep .3
    hyprctl hyprpaper wallpaper "eDP-1,$HOME/Pictures/Wallpapers/$selected"
    sleep .3
    hyprctl hyprpaper unload all

    # Wait for 1 sec
    sleep 1

    # reload waybar
    killall -SIGUSR2 waybar

    # Get new theme
    source "$HOME/.cache/wal/colors.sh"

    newwall=$(echo $wallpaper | sed "s|$HOME/Pictures/Wallpapes/||g")

    # ----------------------------------------------------- 
    # Copy selected wallpaper into .cache folder
    # ----------------------------------------------------- 
     cp $wallpaper ~/.cache/current_wallpaper.jpg
    
    #set firefox colors
    pywalfox update

    $HOME/.scripts/gtkthemeupdate.sh

    sleep 1

    # Send notification
    notify-send "Colors and Wallpaper updated" "with image $newwall"

    echo "Done."
fi

