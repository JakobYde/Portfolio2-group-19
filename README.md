# Portfolio2-group-19
(jayde16 &amp; malje16)<br>
<br>
Followed guide from slide to install and configure lxc. <br>
Created two unprivileged containers -> randomGenerator and webserver. <br>
<br>
Created static Ip adresses by creating /etc/lxc/dhcp.conf and giving: <br>
dhcp-host=randomGenerator,10.0.3.11 <br>
dhcp-host=webserver,10.0.3.12 <br>
<br>
Setting up iptable/routing host to container <br>
iptables -t nat -A PREROUTING -i wlan0 -p tcp --dport 8080 -j DNAT --to-destination 10.0.3.12:80 <br>
<br>
Set up lighttpd on webserver container <br>
Created index.php. <br>
Saved random number generator script in randomGenerator (called rng.sh). <br>
Served with socat: socat -v -v tcp-listen:8080,fork,reuseaddr exec:/bin/rng.sh <br>
<br>
Webpage is found at 'hostip':8080/index.php <br>
