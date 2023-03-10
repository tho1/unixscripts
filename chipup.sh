#/bin/bash

#this shell script allows one to ssh into a chip computer

#read the ip addr cmd and add as usb interface

ip addr add 10.1.1.1/24 dev usb0
ip link set usb0 up

#add ip masquering

iptables -t nat -A POSTROUTING -o wlan0 -j MASQUERADE

# allow ssh to chip

ssh chip@10.1.1.2
