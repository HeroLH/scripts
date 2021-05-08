#!/bin/bash

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

LANG=zh_CN.utf8 fcitx &

picom -b
# feh --recursive --randomize --bg-fill ~/github/wallpapers/ghibili

# dolphin supplicant icon
export QT_QPA_PLATFORMTHEME="qt5ct"

# oneko
oneko -tofocus &

wmname compiz &

# custom status bar:
/bin/bash ~/.config/scripts/dwm-status.sh &
# change backgroud image:
/bin/bash ~/.config/scripts/wp-autochange.sh &
# start vnc server:
/bin/bash ~/.vnc/vnc.sh &
