#!/bin/bash
# Become root
if [[ $UID -ne 0 ]]; then
	echo "-- Becoming root"
	exec sudo $0
fi

sudo echo 1 > /proc/sys/net/ipv4/ip_forward

# activate NAT translation from ethernet to wifi (provide router like functionality to ethernet)
sudo iptables -t nat -A POSTROUTING -o wlp0s20f3 -j MASQUERADE # THIS SHOULD BE THE UPSTREAM/WAN ONE
sudo iptables -A FORWARD -i wlp0s20f3 -o enx6c6e0713167e -m state --state RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A FORWARD -i enx6c6e0713167e -o wlp0s20f3 -j ACCEPT

