#!/bin/bash

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

LANG=zh_CN.utf8 fcitx &

picom -b
feh --recursive --randomize --bg-fill ~/github/wa
llpapers/ghibili

export PATH=~/.npm-global/bin:$PATH


# custom status bar:
/bin/bash ~/scripts/dwm-status.sh &
# change backgroud image:
/bin/bash ~/scripts/wp-autochange.sh &
# start vnc server:
/bin/bash ~/.vnc/vnc.sh &
