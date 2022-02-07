# freemother

a linux pc (a raspberry with raspbian is fine)
we assume the name of the ethernet card is eth0

install the dnsmasq package (for dhcp and dns)
apt-get install dnasmasq

we configure /etc/dnsmasq.conf

# global options
domain-needed
bogus-priv
no-resolv
filterwin2k
expand-hosts
domain = mydomain.net
local = /mydomain.net/
listen-address = 127.0.0.1
listen-address = 192.168.0.1

# DHCP range
dhcp-range = eth0,192.168.0.10,192.168.0.50,12h

we assign the ip to the network card (eth0) where we connected Mother
ifconfig eth0 192.168.0.1 netmask 255.255.255.0

add these lines to the /etc/hosts file
192.168.0.1 in.sen.se
192.168.0.1 pool.ntp.org

we modify /etc/ntp.conf to read the time from the pc clock

we add

server 127.127.1.0
fudge 127.127.1.0 stratum 10

and comment on the lines of 'pool'

----
for the server part I used https://github.com/Pithikos/python-websocket-server (thanks Pithikos!)

follow the installation instructions (python setup.py install)

copy the modified server program freemother.py

https://github.com/ccarlo64/freemother


please edit the file and set mac address variable (check it in you router)
compose with "MO" + MACADDRESS without ":"
like this
mac='MO0004A3F90001' ###change here

same in the clienttest.html


run...
python freemother.py
free mother Log10

connect Mother and after a few seconds she will smile

To see the effects, in the same pc loaded in firefox the clienttest.html
free mother Client10

COOKIE:
the name of 4 cookies (node) are hex digit, plese analyze the log on server and change the file
this are mine

cookieNode=['6FEC200D','AA81082C','206B121A','65EB0E1C']

help me, please test!!!

Carlo