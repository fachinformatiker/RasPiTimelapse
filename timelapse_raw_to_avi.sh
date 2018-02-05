#!/bin/bash
DATE=$(date +"%Y-%m-%d")

cd /home/pi/timelapse_raw

ls *.jpg > stills.txt

mencoder -nosound -ovc lavc -lavcopts vcodec=mpeg4:aspect=16/9:vbitrate=8000000 -vf scale=1920:1080 -o $DATE.avi -mf type=jpeg:fps=24 mf://@stills.txt

mv *.avi /var/www/html/

rm *.jpg