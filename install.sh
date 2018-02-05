#!/bin/bash

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo
    echo "**********************************************"
    echo "Not running as root, please run this script with root rights!"
    echo "**********************************************"
    echo
    exit 1
fi

mkdir /opt/RasPiTimelapse
mkdir /home/pi/RasPiTimelapse
cd /opt/RasPiTimelapse
wget https://raw.githubusercontent.com/szalewicz/RasPiTimelapse/master/take_photo.sh
wget https://raw.githubusercontent.com/szalewicz/RasPiTimelapse/master/create_timelapse.sh
chmod +x take_photo.sh 
chmod +x create_timelapse.sh

echo
echo "**********************************************"
echo "Done, you can now start taking pictures manually or install a cron job"
echo "**********************************************"
echo 