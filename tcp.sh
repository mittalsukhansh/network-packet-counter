#!/bin/bash

# ---------------------------------------
# Network Packet Counter
# Author: Your Name
# Description:
# Captures packets on a selected port
# for a fixed duration using tcpdump.
# ---------------------------------------

echo $#

echo "HI"
echo "This is a basic network packet counter"

if ! command -v tcpdump >/dev/null 2>&1; then
	echo "tcpdump not installed. "
	echo "Run - sudo apt install tcpdump"
	exit 1
fi

read -p "Enter the port number - "  port
read -p "Enter the time in seconds - " time

if [ -z "$port" ] ; then
	echo"No port provided"
	exit 1
fi	

echo "Capturing packets on port $port for $time seconds ...."

packets=$(sudo timeout $time tcpdump -n port "$port" 2>/dev/null | wc -l)


echo "-----------------------------"
echo "packets captured: $packets"
echo "-----------------------------"

