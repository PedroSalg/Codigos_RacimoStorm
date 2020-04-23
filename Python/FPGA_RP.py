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
GPIO.setup(Entrada, GPIO.IN)


Led = LED(Salida)
#Boton = Button(Entrada)
Led.off()
Datos = open("Prueba6.txt","w")
Data = []
for i in range(4096):
	Val_Entrada = GPIO.input(Entrada)
	if (Val_Entrada == True):
		#print ("3.3 V")
		#Boton.when_pressed = Led.on
		dat0 = bus.read_byte_data(address, 0x00)
		dat1 = bus.read_byte_data(address, 0x01)
#		Datos.write(str(dat0) + "\n")
		Val = (dat1 << 8 ) + dat0
		Data.append(str(dat0))
		#print (Val)
		Led.on()
		time.sleep(0.000001)
		Led.off()
		time.sleep(0.000001)
		#if (Boton.is_pressed):
	else:
		print ("PAILA")
#Datos.close()

for i in range(len(Data)):
	Datos.write(Data[i] + '\n')
	#print (Data[i])
Datos.close()

#GPIO.setup(INPUT_PIN, GPIO.IN)
#GPIO.setup(OUTPUT_PIN, GPIO.OUT)

#while True:
#	GPIO.setup(OUTPUT_PIN, False)
#	TO_RP = GPIO.input(INPUT_PIN)
#	print (TO_RP)
#	GPIO.setup(OUTPUT_PIN, True)
#	time.sleep(5)
#	if ( GPIO.input(INPUT_PIN) == True ):
#		dat0 = bus.read_byte_data(address, 0x00)
#		print (dat0)
#		GPIO.setup(OUTPUT_PIN, True)
#		time.sleep(0.5)
#	else:
#		print ('Fail')
