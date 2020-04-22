import time
import RPi.GPIO as GPIO

GPIO.setmode(GPIO.BCM)
INPUT_PIN = 21
GPIO.setup(INPUT_PIN, GPIO.IN)

while True:
	if (GPIO.input(INPUT_PIN) == True):
		print ('3.3 V')

	else:
		print ('0 V')
	#time.sleep(0.5)
