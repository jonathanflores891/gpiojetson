#!/bin/bash
echo "          __        _______ _     ____ ___  __  __ _____   __  __ ____      _____ _     ___  ____  _____ ____
          \ \      / / ____| |   / ___/ _ \|  \/  | ____| |  \/  |  _ \    |  ___| |   / _ \|  _ \| ____/ ___|
           \ \ /\ / /|  _| | |  | |  | | | | |\/| |  _|   | |\/| | |_) |   | |_  | |  | | | | |_) |  _| \___ \
            \ V  V / | |___| |__| |__| |_| | |  | | |___  | |  | |  _ < _  |  _| | |__| |_| |  _ <| |___ ___) |
             \_/\_/  |_____|_____\____\___/|_|  |_|_____| |_|  |_|_| \_(_) |_|   |_____\___/|_| \_\_____|____/
                                                                                                       "
STRING="Installing ..."
echo $STRING
sudo apt install python3-pip
sudo pip3 install Jetson.GPIO
sudo groupadd -f -r gpio
sudo usermod -a -G gpio $USER
sudo cp /opt/nvidia/jetson-gpio/etc/99-gpio.rules /etc/udev/rules.d/
sudo udevadm control --reload-rules && sudo udevadm trigger
