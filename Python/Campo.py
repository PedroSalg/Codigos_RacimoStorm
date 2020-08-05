#IMPORTACION DE LIBRERIAS
import time
import datetime
import os.path
import os
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


def Add_Metadata(Data_File,cnt_clk,Segundo_Evento,Latitud, Longitud, estado):			# AGREGAR METADA A LOS ARCHIVOS DE DESCARGAS
	version = '1.0'
	location = "CRA 29 11 50 - CASA"
	Sensi = "# 2.048 mV/UADC"	    
	file = open(Data_File,'a')
	file.write( '# RACIMO STORM' + '\n' + '# Version ' + version + '\n' + '# Latitud = ' + Latitud + '\n' + '# Longitud = ' + 
	Longitud + '\n' + '# Estado del GPS = ' + estado + '\n'
	+ '# R ' + Sensi 	+ '\n' +  '# C ' + str(cnt_clk) + '\n' +  '# S ' + str(Segundo_Evento) + '\n' +  '# F 10 us' + '\n')
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
	global Latitud
	global Longitud
	global estado
	dat0 = bus.read_byte_data(address, 0x00)
	dat1 = bus.read_byte_data(address, 0x01)
	Val = (dat1 << 8 ) + dat0
	Datos.append(str(Val))
	print (Contador, Val)	
	GPIO.output(Salida, True)
	time.sleep(0.000001)
	if (Contador==10):
		#timepo_descarga = datetime.datetime.now()
		[timepo_descarga, Latitud, Longitud, estado] = Obtener_Fecha()
	if (Contador==1000):
		print ("Adquiriendo")	
	Contador += 1

# FUNCION PARA GENERAR EL NOMBRE DE LOS ARCHIVOS 
def Name_Data_File(timepo_descarga):
	Folder = "Descargas/"
	#t = TDescarga.timetuple()
	dtime=datetime.datetime.fromtimestamp(int(timepo_descarga))
	t=dtime.timetuple()
	print ("Entro a la funcion Name_DAta")
	Mes = t.tm_mon
	Dia = t.tm_mday
	Hora = t.tm_hour
	Minu = t.tm_min
	print ("Termino conversion")
	#Secon = t.tm_sec
	if (Mes < 10):
		Mes = '0' + str(Mes)
		
	if (Dia < 10):
		Dia = '0' + str(Dia)
	
	if (Hora < 10):
		Hora = '0' + str(Hora)
	print ("Inicio Datos")
	Data_File = Folder +  "Lighting_" + str(Mes) + '_' + str(Dia) + '_' + str(Hora) + '_' + str(Minu)+ ".dat"
	print ("Termino DAtos")
	Archivo = open(Data_File,"w")
	Archivo.close()
	print ("archivo creado")
	return (Data_File)


def Data_Proccess(Datos):
	Ini = Datos[-19:]
	Ini = Ini[::-1]
	Fin = Datos[:-19]
	a = len(Ini) + len(Fin) - 3
	cnt_b1 = (int(Ini[-1]))
	cnt_b2 = (int(Ini[-2]))
	cnt_b3 = (int(Ini[-3]))
	print ("Bytes del contador: Byte1: ", str(cnt_b1), " Byte2: ", str(cnt_b2), " Byte3: ", str(cnt_b3))
	con1 = (cnt_b2 << 12) + cnt_b1
	con2 = (cnt_b3 << 24) + con1
	time_base = 0
	return (a,con2,time_base,Ini,Fin)

def Obtener_Fecha():
	Ln1 = "fil=$(ls Datos/ | tail -n 1); line=$(tail -1 Datos/${fil}); echo $line > Temp"
	os.system(Ln1)
	File_Read = open('Temp','r')
	Last_Line = File_Read.readline()
	#print (Last_Line)
	Tam = len(Last_Line)
	L_Line = (Last_Line.split(" "))
	if (Tam <= 2):
		print ("No se detecto datos del GPS")
		#timepo_descarga = datetime.datetime.now()
		Tim = time.time()
		Lat = '0708.1959 N'
		Lon = '07307.0937 W'
		Estado_GPS = 'Inactivo'
		print (int(Tim), Lat, Lon, Estado_GPS)
	else:
		Tim = L_Line[0]
		print ("Datos activos del GPS")
		Lat = L_Line[1] + ' ' + L_Line[2]
		Lon = L_Line[3] + ' ' + L_Line[4]
		Estado_GPS = 'Activo'
		print (Tim, Lat, Lon, Estado_GPS)
	return (Tim, Lat, Lon, Estado_GPS)



#DEFINICION DEL PIN DE INTERRUPCION 
GPIO.setup(Entrada, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)
GPIO.add_event_detect(Entrada, GPIO.RISING, callback=Lectura_Datos)
print ("Esperando eventos.......")

while True:
	
	if (Contador > 1):
		print (Contador, " -------- SINTACOR -----------------------CONTADOR")
		while (Bandera == 0):
			if (Contador <=  N+1):
				Bandera = 0
				GPIO.output(Salida, False) 
				time.sleep(0.000001)		
				
			else:
				Bandera = 1	
				
		Contador = 1
		Bandera = 0
		time.sleep(1)
		print (timepo_descarga)
		[a,pausa_contador,time_base,Ini,Fin] = Data_Proccess(Datos)
		#print ("COntador CLK: ", pausa_contador)
		file_name = Name_Data_File(int(timepo_descarga))
		print ("Fin de archivo")
		Add_Metadata(file_name,pausa_contador,timepo_descarga, Latitud, Longitud, estado)
		Archivo = open(file_name,"a")
		print ("Guardando datos........")	
		for i in range(a):
			if (i<=15): 
				#print (i, Ini[i])
				Archivo.write(str(time_base) + ', ' + str(Ini[i])+ '\n')
				#print ()
				
			else:
				#break
				#print (i-11,Fin[i-11])
				Archivo.write(str(time_base) + ', ' + str(Fin[i-16]) + '\n')
			time_base = time_base + 10e-6
		Archivo.close()
		print ("Escritura finalizada.....")
		print (file_name)
		print ("Espera nuevo evento......")
		Datos = []  
		#Contador = 1
		print (Contador, Bandera)
		#time.sleep(2)
		
		
	else:
		pass
		
