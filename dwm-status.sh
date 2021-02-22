#!/bin/bash


if [ -n $(xrandr -q | grep -o "eDP-1-1") ];
    then
        xrandr --output eDP-1-1 --auto --output DP-1-1 --auto --right-of eDP-1-1
    else
        echo "false";
fi

export PATH=~/.npm-global/bin:$PATH

LANG=zh_CN.utf-8 nohup optimus-manager-qt </dev/null &>/dev/null &

# 网络链接系统托盘
LANG=zh_CN.utf-8 nohup nm-applet </dev/null &>/dev/null &

# 从托盘控制音量大小
LANG=zh_CN.utf-8 nohup kmix </dev/null &>/dev/null &
sleep 1

while true
do
	bash ./dwm-status-refresh.sh
	sleep 2
done
