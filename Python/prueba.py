import time
import RPi.GPIO as GPIO
from gpiozero import LED, Button
from smbus2 import SMBus

bus = SMBus(1)

address = 0x08
reg0 = 0x00
reg1 = 0x01

GPIO.setmode(GPIO.BCM)
Entrada = 20
Salida = 21
#GPIO.setup(Entrada, GPIO.IN)

#Se define la funcion que se ejecutara cuando ocurra un evento
def FPGA_signal():

	GPIO.output(Salida, True) # Reading status on
	print("Data on buffer!")
	#leer y escribir en archivo

	dat0 = bus.read_byte_data(address, 0x00)
	dat1 = bus.read_byte_data(address, 0x01)
	Val = (dat1 << 8 ) + dat0
	Data.append(str(Val))
	print (Val)
	contador += 1

# set out
GPIO.setup(Salida, GPIO.OUT)

# Set Entrada as interruption
GPIO.setup(Entrada, GPIO.IN, pull_up_down=GPIO.PUD_UP)
GPIO.add_event_detect(Entrada, GPIO.RISING, callback=FPGA_signal, bouncetime=100)

GPIO.output(Salida, False)

Datos = open("Prueba13.txt","w")
Data = []
contador = 0
bandera = 1
N = 500 # data size 500 or 1 million


while (1):
	
	if contador <= N: # run for a complete read
		GPIO.output(Salida, False)
		# wait for interruption
	else:
		for i in range(1,len(Data)):
			Datos.write(Data[i] + '\n')
			Datos.close()
			contador = 0





