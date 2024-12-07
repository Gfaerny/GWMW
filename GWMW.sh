#!/bin/bash
# GWMW : GFAERNY , WINDOWS , MANGER , WAY
#
# DEP : XDOTOOL , XDPYINFO ,WMCTRL
#
# FIRST WE GET THE ALL ID FOR WINDOWS AND RES OF SCREEN
#
# THEN
# WITH XDOTOOL WE CAN CHANGE THE SIZE OF WINDOWS LIKE BELOW
#
# xdotool windowsize 0x03c0000e 800 1000

# # GET resolution
res=$(xdpyinfo | grep dimensions | awk '{print $2}')
IFS='x' read -r width height <<< "$res"
echo "Width: $width, Height: $height"


#while true
#do

# # GET ALL WINDOWS ID
    mc=$(wmctrl -l | awk '{print $1}')
    unset mc[0]
    unset mc[1]    
    
    for id in $mc;
    do
        echo "$id"
        xdotool windowsize "$id" $((width-40)) $((height-40))

    done


#done


