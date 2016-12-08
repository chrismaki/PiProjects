#!/usr/bin/python
import picamera
from time import sleep
loops = 999
camera = picamera.PiCamera()
camera.vflip = False
camera.hflip = False
camera.brightness = 70
sleep(5)
x = 100
while x < loops :
        name = 'picout/image' + str(x) + '.jpg'
        camera.capture(name)
        x = x + 1
        sleep(60)
