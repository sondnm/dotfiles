#!/bin/sh
# Keymapping
setxkbmap -option compose:rctrl
if test -e /usr/bin/xmodmap; then
	if test -e .Xmodmap; then
		xmodmap .Xmodmap
	fi
fi

xsetroot -cursor_name left_ptr
