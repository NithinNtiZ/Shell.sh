#!/bin/bash

#install NetworkManager before using this script.

echo "Enter Connection Name: "
read z

echo "Enter ip Address: "
read x

echo "Enter Default Gateway: " 
read y

i=$(ls /sys/class/net | grep -i ens33 > /home/user/Desktop/in.txt && cat /home/user/Desktop/in.txt)


nmcli connection add con-name $z type ethernet ifname $in ipv4.addresses $x  gw4 $y

echo "New connection $z is made"