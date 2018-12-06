# Portfolio2-group-19
(jayde16 &amp; malje16)

Followed guide from slide to install and configure lxc. 
Created two unprivileged containers -> randomGenerator and webserver. 

Created static Ip adresses by creating /etc/lxc/dhcp.conf and giving:
dhcp-host=randomGenerator,10.0.3.11
dhcp-host=webserver,10.0.3.12

Setting up iptable/routing host to container
iptables -t nat -A PREROUTING -i wlan0 -p tcp --dport 8080 -j DNAT --to-destination 10.0.3.12:80

Set up lighttpd on webserver container 
Saved random number generator script in randomGenerator (called rng.sh). 
Served with socat: socat -v -v tcp-listen:8080,fork,reuseaddr exec:/bin/rng.sh

Webpage is found at <hostip>:8080/index.php
