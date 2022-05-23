#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Keymapping
setxkbmap -option compose:rctrl
setxkbmap -option caps:escape

# Keyboard delay rate
xset r rate 250 30

# Vietnamese ibus
export GTK_IM_MODULE=xim
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT4_IM_MODULE=ibus
export CLUTTER_IM_MODULE=ibus
export GLFW_IM_MODULE=ibus
ibus-daemon -rdx

export PRIMARY_DISPLAY=$(xrandr | awk '/ connected/{print $1}')
xidlehook \
  --not-when-audio \
  --not-when-fullscreen \
  --timer 120 \
    'xrandr --output "$PRIMARY_DISPLAY" --brightness .1' \
    'xrandr --output "$PRIMARY_DISPLAY" --brightness 1' \
  --timer 300 \
    'xrandr --output "$PRIMARY_DISPLAY" --brightness 1; slock' \
    '' \
  --timer 3600 \
    'xrandr --output "$PRIMARY_DISPLAY" --brightness 1; systemctl suspend' \
    '' &
ticktick &
kitty &
exec bspwm
