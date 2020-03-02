# CODIGO PARA REGISTRAR SOLAMENTE EL TIEMPO EN UNIX TIME EN ARCHIVOS NOMBRADOS POR HORA

# IMPORTAMOS LIBRERIAS
##########################################

import serial
import time
import datetime
import os.path
import smbus2
import bme280
import time
import Adafruit_ADS1x15


# INICIALIZACION 
##########################################

port = 1
address = 0x77
bus = smbus2.SMBus(port)
calibration_params = bme280.load_calibration_params(bus, address)
adc = Adafruit_ADS1x15.ADS1115()
GAIN = 1


# INICIALIZAMOS LOS NOMBRE DE ALGUNAS VARIABLES
##########################################

Metadata = "Metadata.txt"
Folder = "Datos/"
tiempo = datetime.datetime.now()
t = tiempo.timetuple()
Anho = str(t.tm_year)
Mes = t.tm_mon
Dia = t.tm_mday
Hora = t.tm_hour

if (Mes < 10):
    Mes = '0' + str(Mes)

if (Dia < 10):
    Dia = '0' + str(Dia)

if (Hora < 10):
    Hora = '0' + str(Hora)

Data_File = Folder + 'Datos_' + Anho + '_' + str(Mes) + '_' + str(Dia) + '_' + str(Hora) + '.txt'
hora = t.tm_hour


# CREACION DE ARCHIVO DE DATOS Y METADATA

if os.path.isfile(Metadata):
	bool = True
	archivo = open(Data_File,'a')
	archivo.close()
else:
	bool = False
	archivo = open(Data_File,'w')
	archivo.close()

if bool == False:

	name = raw_input('Nombre de la estacion: ')
	version = 'Version 1.0'
	location = raw_input('Ubicacion: ')
	sensors = raw_input('Sensores conectados: ')
	power = raw_input('Fuente de voltaje: ')
	zone = raw_input ('Zona horaria: ')
	
	file = open('Metadata.txt','a')
	file.write( '#RACIMO STORM' + '\n' '# Name = ' + name + '\n' + '# Version = ' + version + '\n' + '# Location = ' + location + '\n' + '# Sensors = ' + sensors + '\n' + '# Power = ' +  power + '\n' + '# Time Zone = ' + zone + '\n')
	file.write('#UTCtime Campo Campo_Calculado Temperatura Presion Humedad \n')
	file.close()
        
	with open(Metadata, 'r') as F1:
		with open(Data_File, 'a') as F2:
			for line in F1:
				F2.write(line)  
	F1.close()
	F2.close()
	

print ('Estacion Meteorologica Adquiriendo ...')

while 1:	

    values = [0]*4
    for i in range(4):
        values[i] = adc.read_adc(i, gain=GAIN)
    n = datetime.datetime.now()
    unix_time = time.mktime(n.timetuple())		# Set unix time stamp

    V = round(values[0]*0.000125,3)
    R = round(((V-2.329)/(8e-5)),3)
    data = bme280.sample(bus, address, calibration_params)

    Datos = str(unix_time) + ' ' +str(V) + ' ' + str(R) + ' ' + str(round(data.temperature,2)) + ' ' + str(round(data.pressure,2)) + ' ' + str(round(data.humidity,2)) + '\n'
    archivo = open(Data_File,'a')
    #Datos = str(Datos)
    print (Datos)
    archivo.write(Datos)
    archivo.close()
    time.sleep(0.5)
    tiempo = datetime.datetime.now()
    t = tiempo.timetuple()
    if t.tm_hour != hora:
        Data_File = Folder + 'Datos_' + str(t.tm_year) + '_' + str(t.tm_mon) + '_' + str(t.tm_mday) + '_' +  str(t.tm_hour) + '.txt'
    	
    	with open(Metadata, 'r') as F1:
                    with open(Data_File, 'a') as F2:
        	                for line in F1:
                	        	F2.write(line)

    	F1.close()
    	F2.close()
    	hora = t.tm_hour




