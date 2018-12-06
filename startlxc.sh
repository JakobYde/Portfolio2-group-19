#!/bin/bash

sudo iptables -t nat -A PREROUTING -i wlan0 -p tcp --dport 8080 -j DNAT --to-destination 10.0.3.12:80

lxc-start -n webserver
lxc-start -n randomGenerator
