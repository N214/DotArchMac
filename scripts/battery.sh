#!/bin/bash

BATTINFO=`acpi -b`
if [[ `echo $BATTINFO | grep Battery ` && ` echo $BATTINFO | cut -f 4 -d " "` < 10%, ]] ; then
    DISPLAY=:0.0 /usr/bin/notify-send "Low battery" "$BATTINFO"
fi

