#!/usr/bin/env python2.7  

# Algorithm for counting external interrupts in the Raspberry Pi
   
import RPi.GPIO as GPIO  
import sys
import time

OR_INPUT = 17

GPIO.setmode(GPIO.BCM)  
   
GPIO.setup(OR_INPUT, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)

contador = 0
 
def my_callback(channel):
    global contador
    contador = contador + 1
     
GPIO.add_event_detect(OR_INPUT, GPIO.RISING, callback=my_callback)  

while True:

        time.sleep(1.0)				# Pausa de 1 segundo (frecuencia en Hz)
        sys.stdout.write('%d Hits/s\n' % contador)	# Imprime el numero de evento por segundo
        sys.stdout.flush()
	contador = 0	   	

raw_input("Press Enter Para salir del programa \n") 
GPIO.cleanup() 


