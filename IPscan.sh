#!bin/bash


echo "IPaddresses for this machine are . . . ."

sleep 2

echo "Scaning. . . . ."

sleep 2

echo "Still Scanning. . . . "

sleep 2


n=$(ifconfig | sort| grep -w inet | awk '{print $2}')


echo "GOT IT ....."

echo -e "\n$n"
