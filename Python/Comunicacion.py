#Importamos librerias 
import time
import RPi.GPIO as GPIO
from smbus2 import SMBus
from gpiozero import LED

#Inicializacion

Contador = 1         # Contador de eventos
Bandera = 0 		  # Bandera de salida del While
N = 100000			      # Numero de eventos para terminal el While, N-1	
Datos = []             # Vector que contendra la informacion 	


#I2C
bus = SMBus(1)
address = 0x08

# Configuracion de GPIOs	
GPIO.setmode(GPIO.BCM)
Entrada = 20
Salida = 21

#Define los pines de salida
GPIO.setwarnings(False)
#GPIO.cleanup()
GPIO.setup(Salida, GPIO.OUT)
GPIO.output(Salida, False) 
#Led = LED(Salida)
#Led.off()

# Apertura de archivo de texto
Archivo = open("Prueba130.txt","w")

# Funcion a ejecutar durante interrupcion 
def Lectura_Datos(channel):	
	global Contador
	global Datos 
	#Led.on()
	#time.sleep(0.1)
	dat0 = bus.read_byte_data(address, 0x00)
	dat1 = bus.read_byte_data(address, 0x01)
	Val = (dat1 << 8 ) + dat0
	Datos.append(str(Val))
	print (Contador, Val)	
	GPIO.output(Salida, True)
	time.sleep(0.000001)
	#time.sleep(0.1)
	#print("Data on buffer!")
	#GPIO.output(Salida, False) 
	
	Contador += 1
	#print (Contador)

#Define el pin de Entrada como Pin de interrupcion 
GPIO.setup(Entrada, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)
GPIO.add_event_detect(Entrada, GPIO.RISING, callback=Lectura_Datos)

#message = input("Press enterto quit\n\n")

#

while (Bandera == 0):
	if (Contador <=  N):
		Bandera = 0
		GPIO.output(Salida, False) 
		time.sleep(0.000001)
		#Led.off()
		
			
	else:
		Bandera = 1		 

print ("Escribiendo Datos")

for i in range(1,len(Datos)):
	#print (Datos[i])
	##Archivo = open("Prueba13.txt","a")
	Archivo.write(Datos[i] + '\n')
	
Archivo.close()
