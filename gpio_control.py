#!/usr/bin/env python


import RPi.GPIO as GPIO
import time

# Pin Definitions
output_pin = 18  # BOARD pin 12, BCM pin 18

GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)


def gpioOn():
    GPIO.setmode(GPIO.BCM)
    GPIO.setup(output_pin, GPIO.OUT, initial=GPIO.HIGH)
    GPIO.output(output_pin, GPIO.HIGH)
    GPIO.cleanup()

def gpioOff():
    GPIO.setmode(GPIO.BCM)
    GPIO.setup(output_pin, GPIO.OUT, initial=GPIO.LOW)
    GPIO.output(output_pin, GPIO.LOW)
