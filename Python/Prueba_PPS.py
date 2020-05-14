#Importamos librerias 
import time
import RPi.GPIO as GPIO


#Inicializacion

Contador = 1         # Contador de eventos
Bandera = 0 		  # Bandera de salida del While
N = 5			      # Numero de eventos para terminal el While, N-1	


# Configuracion de GPIOs	
GPIO.setmode(GPIO.BCM)
Entrada = 19


#Define los pines de salida
GPIO.setwarnings(False)


# Funcion a ejecutar durante interrupcion 
def Lectura_Datos(channel):	
	global Contador
	print ("Evento detectado: ", Contador)	
	Contador += 1
	

#Define el pin de Entrada como Pin de interrupcion 
GPIO.setup(Entrada, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)
GPIO.add_event_detect(Entrada, GPIO.RISING, callback=Lectura_Datos)

print ("Espera Evento")

while (Bandera == 0):
	if (Contador <=  N):
		Bandera = 0
				
			
	else:
		Bandera = 1		 
