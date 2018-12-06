#!/bin/bash

lxc-stop -n webserver
lxc-stop -n randomGenerator
sudo iptables -t nat -D PREROUTING 1
