#!/bin/bash
# declare STRING variable
STRING="Installing ..."
#print variable on a screen
echo $STRING
sudo apt install python3-pip
sudo pip3 install Jetson.GPIO
sudo groupadd -f -r gpio
sudo usermod -a -G gpio $USER

sudo cp /opt/nvidia/jetson-gpio/etc/99-gpio.rules /etc/udev/rules.d/
sudo udevadm control --reload-rules && sudo udevadm trigger
