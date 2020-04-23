import time
import RPi.GPIO as GPIO

GPIO.setmode(GPIO.BCM)
Entrada = 21
Salida = 20


GPIO.setup(Salida, GPIO.OUT)
GPIO.setup(Entrada, GPIO.IN)
GPIO.output(Salida, False)


while (1):
	Val_Entrada = GPIO.input(Entrada)
	if (Val_Entrada == True ):
		GPIO.output(Salida, True) # Reading status on
		print("Data on buffer!")
		time.sleep(2)
	else:
		GPIO.output(Salida, False)
		#time.sleep(1)
	#leer y escribir en archivo

