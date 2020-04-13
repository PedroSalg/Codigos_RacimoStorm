import time
#import RPi.GPIO as GPIO
from gpiozero import LED
from smbus2 import SMBus

bus = SMBus(1)

address = 0x08
reg0 = 0x00

GPIO.setmode(GPIO.BCM)
INPUT_PIN = 20
OUTPUT_PIN = 21
GPIO.setup(INPUT_PIN, GPIO.IN)
GPIO.setup(OUTPUT_PIN, GPIO.OUT)

while True:
	GPIO.setup(OUTPUT_PIN, False)
	TO_RP = GPIO.input(INPUT_PIN)
	print (TO_RP)
	GPIO.setup(OUTPUT_PIN, True)
	time.sleep(5)
#	if ( GPIO.input(INPUT_PIN) == True ):
#		dat0 = bus.read_byte_data(address, 0x00)
#		print (dat0)
#		GPIO.setup(OUTPUT_PIN, True)
#		time.sleep(0.5)
#	else:
#		print ('Fail')
