#!/usr/bin/python
import picamera
outpath = "/home/pi/Pictures/picout/"
filename = "image"
from time import sleep
loops = 999
camera = picamera.PiCamera()
camera.vflip = False
camera.hflip = False
camera.brightness = 70
sleep(5)
x = 100
while x < loops :
        name = outpath + filename + str(x) + '.jpg'
        camera.capture(name)
        x = x + 1
        sleep(60)
