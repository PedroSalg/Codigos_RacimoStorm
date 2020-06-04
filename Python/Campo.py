#IMPORTACION DE LIBRERIAS
import time
import datetime
import os.path
import RPi.GPIO as GPIO
from smbus2 import SMBus
from gpiozero import LED

#INICIALIZACION DE VARIABLES
Contador = 1        		 # Contador de eventos
Bandera = 0 		  		 # Bandera de salida del While
N = 120000			      	 # Numero de eventos para terminal el While, N-1	
Datos = []              	 # Vector que contendra la informacion 	

# BUS I2C COMUNICACION CON FPGA
bus = SMBus(1)
address = 0x08

#CONFIGURACION DE GPIOs	
GPIO.setmode(GPIO.BCM)
Entrada = 20				 # Entrada de datos desde la Raspberry Pi
Salida = 21  				 # Salida de datos hacia la Raspberry Pi
GPIO.setwarnings(False)
GPIO.setup(Salida, GPIO.OUT)
GPIO.output(Salida, False) 


def Add_Metadata(Data_File,cnt_clk,Segundo_Evento):			# AGREGAR METADA A LOS ARCHIVOS DE DESCARGAS
	name = "MONITOREO DE CAMPO ELECTRICO RAPIDO"
	version = '1.0'
	location = "CRA 29 11 50 - CASA"
	sensors = "CAMPO ELECTRICO RAPIDO"
	power = "RED"
	zone = "UTC-5"
	Sensi = "# 2.048 UADC/mV"
	    
	file = open(Data_File,'a')
	file.write( '# RACIMO STORM' + '\n' '# Name = ' + name + '\n' + '# Version = ' + version + '\n' + '# Location = ' + location + '\n' + '# Sensors = ' + sensors + '\n' + '# Power = ' +  
	power + '\n' + '# Time Zone = ' + zone + '\n' + Sensi + '\n' +  '# Contador FPGA = ' + str(cnt_clk) + '\n' +  '# Segundo = ' + str(Segundo_Evento) + '\n')
	file.write('# Time(us) UADC \n')
	file.close()
        
	#with open(Metadata, 'r') as F1:
	#	with open(Data_File, 'a') as F2:
	#		for line in F1:
	#			F2.write(line)
	#F1.close()
	#F2.close()


# FUNCION DE INTERRUPCION 
def Lectura_Datos(channel):	
	#global Bandera 
	global Contador
	global Datos 
	global timepo_descarga
	dat0 = bus.read_byte_data(address, 0x00)
	dat1 = bus.read_byte_data(address, 0x01)
	Val = (dat1 << 8 ) + dat0
	Datos.append(str(Val))
	#print (Contador, Val)	
	GPIO.output(Salida, True)
	time.sleep(0.000001)
	if (Contador==10):
		timepo_descarga = datetime.datetime.now()
	if (Contador==1000):
		print ("Adquiriendo")	
	Contador += 1

# FUNCION PARA GENERAR EL NOMBRE DE LOS ARCHIVOS 
def Name_Data_File(TDescarga):
	Folder = "Descargas/"
	t = TDescarga.timetuple()
	Mes = t.tm_mon
	Dia = t.tm_mday
	Hora = t.tm_hour
	Minu = t.tm_min
	Secon = t.tm_sec
	if (Mes < 10):
		Mes = '0' + str(Mes)
		
	if (Dia < 10):
		Dia = '0' + str(Dia)
	
	if (Hora < 10):
		Hora = '0' + str(Hora)
	Data_File = Folder +  "Lighting_" + str(Mes) + '_' + str(Dia) + '_' + str(Hora) + '_' + str(Minu)+ ".dat"
	Archivo = open(Data_File,"w")
	Archivo.close()
	return (Data_File,Secon)


def Data_Proccess(Datos):
	Ini = Datos[-14:]
	Ini = Ini[::-1]
	Fin = Datos[:-14]
	a = len(Ini) + len(Fin) - 3
	cnt_b1 = bin(int(Ini[-3]))
	cnt_b2 = bin(int(Ini[-2]))
	cnt_b3 = bin(int(Ini[-1]))
	pausa_contador_b = cnt_b3[2:] + cnt_b2[2:] + cnt_b1[2:]
	pausa_contador = int(pausa_contador_b,2)
	time_base = 0
	return (a,pausa_contador,time_base,Ini,Fin)




#DEFINICION DEL PIN DE INTERRUPCION 
GPIO.setup(Entrada, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)
GPIO.add_event_detect(Entrada, GPIO.RISING, callback=Lectura_Datos)
print ("Esperando eventos.......")

while True:
	
	if (Contador > 1):
		#print (Contador)
		while (Bandera == 0):
			if (Contador <=  N):
				Bandera = 0
				GPIO.output(Salida, False) 
				time.sleep(0.000001)		
				
			else:
				Bandera = 1	
				
		Contador = 1
		Bandera = 0
		time.sleep(1)
		print ("Nuev archivo")
		[a,pausa_contador,time_base,Ini,Fin] = Data_Proccess(Datos)
		[file_name, time_sec] = Name_Data_File(timepo_descarga)
		print ("Fin de archivo")
		Add_Metadata(file_name,pausa_contador,time_sec)
		Archivo = open(file_name,"a")
		print ("Guardando datos........")	
		for i in range(a):
			if (i<=10): 
				#print (i, Ini[i])
				Archivo.write(str(time_base) + ', ' + str(Ini[i])+ '\n')
				#print ()
				
			else:
				#break
				#print (i-11,Fin[i-11])
				Archivo.write(str(time_base) + ', ' + str(Fin[i-15]) + '\n')
			time_base = time_base + 10
		Archivo.close()
		print ("Escritura finalizada.....")
		print (file_name)
		print ("Espera nuevo evento......")
		Datos = []  
		
		
	else:
		pass
		
