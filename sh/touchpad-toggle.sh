# This configuration is from Arch Linux wiki
# https://wiki.archlinux.org/index.php/Touchpad_Synaptics
# This file enables touchpad toggling feature
# This file should be located at /usr/local/bin/touchpad-toggle.sh

#!/bin/bash
declare -i ID
ID=`xinput list | grep -Eio '(touchpad|glidepoint)\s*id\=[0-9]{1,2}' | grep -Eo '[0-9]{1,2}'`

declare -i STATE
STATE=`xinput list-props $ID | grep 'Device Enabled' | awk '{print $4}'`

if [ $STATE -eq 1 ]
then
    xinput disable $ID
    notify-send 'Touchpad Disabled'
else
    xinput enable $ID
    notify-send 'Touchpad Enabled'
fi
