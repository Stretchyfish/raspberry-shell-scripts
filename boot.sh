#!/bin/sh
DIR_BIN='dirname$(readlink -f $0)'
cd $DIR_BIN
#!/bin/bash

sudo sysctl -w net.ipv4.ip_forward=1
sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE

#echo  "i am here! " >> log.txt

#sudo sh /bin/ ./led_blink.sh&

#sudo source led_blink.sh&

# These two
#sudo ./home/pi/rpi-shell-scripts/led_blink.sh&
sudo ./home/pi/rpi-shell-scripts/power_off.sh&

while true
do
	sudo echo "Gogogog"
	sleep 1
done


#sudo ./home/pi/r_blink.sh&
#sudo ./home/pi/bin/power_off.sh&

