#!/bin/bash
cd
echo "© Rohit Ner 2017"
var='$1'
echo "# added for modifying brightness using digital values
setlight() {
    currpath="$(pwd)"
    cd /sys/class/backlight/intel_backlight
    echo "$var" | sudo tee brightness
    cd $currpath
}
" >> .bashrc
source .bashrc
cd /sys/class/backlight/intel_backlight
max=$(cat max_brightness)
cd
echo "Setlight installed succesfully!"
echo "Usage: setlight <brightness level between 0 and $max>"
