#!/usr/bin/env python

"""
Pin Definitions
output_pin = 18  # BOARD pin 12, BCM pin 18
"""

from gpio_control import *

def main():

    while True:
        print("GPIO ON")
        gpioOn()
        time.sleep(1)
        print("GPIO OFF")
        gpioOff()
        time.sleep(1)

if __name__ == '__main__':
    main()
    GPIO.cleanup()
