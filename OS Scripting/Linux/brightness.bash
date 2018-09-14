#!/bin/bash

echo Max Brightness:
cat /sys/class/backlight/intel_backlight/max_brightness 

declare -i MAXBRIGHTNESS=$(cat /sys/class/backlight/intel_backlight/max_brightness)

echo 

if [ $1 -gt $MAXBRIGHTNESS ]; then
        echo "Invalid brightness $1!! Can't be set higher than the max"
elif [ $1 -lt 100 ]; then
        echo "Invalid brightness $1!! Can't be set lower than 100"
else
        # Set brightness if not above the max or below the min
        echo $1 | sudo tee /sys/class/backlight/intel_backlight/brightness
fi