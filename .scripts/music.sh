hyprctl dispatch movecursor 1850 1000
sleep .1
hyprctl dispatch workspace 17
sleep .1
hyprctl dispatch -- exec kitty peaclock --config-dir /home/frah/.config/peaclock
sleep .1
hyprctl dispatch exec kitty ncmpcpp
sleep .1
hyprctl dispatch exec kitty cava
sleep 1
hyprctl dispatch movefocus u
