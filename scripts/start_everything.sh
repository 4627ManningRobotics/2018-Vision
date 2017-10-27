#!/bin/sh
# Kill everything.
killall -q mjpg_streamer
#
#
# For USB cameras:
#
# if [ -e /dev/video0 ];
# then
#        env LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH mjpg_streamer -o "output_http.so -w /usr/local/share/mjpg-streamer/www -p 1180" -i "input_uvc.so -f 15 -r 320x200 -y -n" &
# fi
#
# For Raspberry Pi native cameras:
        env LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH mjpg_streamer -o "output_http.so -w /usr/local/share/mjpg-streamer/www -p 1180" -i "input_raspicam.so -fps 15 -x 320 -y 200" &
