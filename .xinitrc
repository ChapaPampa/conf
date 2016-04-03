#!/bin/sh

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?* ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

eval $(cat ~/.fehbg)                # sets the background image
setxkbmap us intl -option caps:escape

numlockx &

exec $1
