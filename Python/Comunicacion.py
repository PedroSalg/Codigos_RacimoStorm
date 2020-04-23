#Importamos librerias 
import time
import RPi.GPIO as GPIO


def Lectura_Datos(channel):
	GPIO.output(Salida, True) # Reading status on
	print("Data on buffer!")
	time.sleep(2)
	GPIO.output(Salida, False) 
	
GPIO.setmode(GPIO.BCM)
Entrada = 21
Salida = 20

#Define los pines de salida
GPIO.setwarnings(False)
GPIO.setup(Salida, GPIO.OUT)

# Set Entrada as interruption
GPIO.setup(Entrada, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)
GPIO.add_event_detect(Entrada, GPIO.RISING, callback=Lectura_Datos, bouncetime=100)

message = input("Press enterto quit\n\n")

GPIO.cleanup()
