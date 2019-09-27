#!/bin/bash
function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}
run ~/bin/keylight 1 
run pactl load-module module-bluetooth-discover 
run syncthing-gtk -m 
run ~/bin/nvidia-setconf 
run xrdb ~/.Xresources 
run feh --bg-scale ~/Images/Wallpapers/wallpaper.png 
run setxkbmap -option caps:swapescape 
run systemctl --user start xfce4-notifyd 
run compton -C 
run nm-applet 
run xautolock -time 10 -locker 'slock -m "$(fortune disclaimer | cowsay)"'
run ~/.config/polybar/launch.sh 


