#!/bin/bash

cd /home/christian/webcam/

D1=`date +%Y-%m-%d`
D2=`date +%Y%m%d_%H-%M-%S`

# If the date directory does not exist, create it
if [ ! -d $D1 ] ; then
mkdir -p $D1
fi

#cd to this new directory
#cd $HOME/captures/$D1

# fswebcam seems to solve the problems with streamer and vlc. The -S option
# is 'skip' which brilliantly discards the first N frames before
# saving the final one. The -r option is for 'resolution' i.e. size of
# recorded frame in pixels

fswebcam -d /dev/video0 -S 2 -r 640x480 /home/christian/webcam/$D1/$D2.jpg