#!/bin/bash

# Load resources
xrdb -merge .Xresources

# Set up an icon tray
trayer --edge top --align right --SetDockType true --expand true --width 10 --transparent true --tint 0x000000 --alpha 0 --height 17 & #--SetPartialStrut true

#set background color or image
#xsetroot -solid midnightblue


#fire up daemons
#exec ssh-agent ck-launch-session dbus-launch lxsession &


xrdb ~/.Xresources &

#set cursor
xsetroot -cursor_name left_ptr

#remap capslock to ctrl
xmodmap ~/.xmodmaprc

# Fire up apps
urxvtd &
xscreensaver -no-splash &
sh /home/matthew/bin/bg_switcher.sh &
#gnome-settings-daemon &
#checkgmail -no_cookies &
pidgin&
#wicd-client&
synclient TouchpadOff=1 &
volumeicon &

if [ -x /usr/bin/nm-applet ] ; then
   nm-applet --sm-disable &
fi

exec ssh-agent  dbus-launch xmonad
