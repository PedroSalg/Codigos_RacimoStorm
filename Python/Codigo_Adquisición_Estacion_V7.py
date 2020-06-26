# CODIGO PARA REGISTRAR SOLAMENTE EL TIEMPO EN UNIX TIME EN ARCHIVOS NOMBRADOS POR HORA

# IMPORTAMOS LIBRERIAS
##########################################

import serial
import time
import datetime
import os.path
import smbus2
import bme280
import readGPS
import Emill
import venusGPS

# INICIALIZACION 
##########################################

#-------BME280---------
address = 0x76
port = 1
bus = smbus2.SMBus(port)
calibration_params = bme280.load_calibration_params(bus, address)

#-------EMILL---------
adress2 = 0x60

#-------VENUS GPS----------
portgps = "/dev/serial0"
baudrategps = 9600
timeoutgps = 0.5

#ACTUALIZAR FECHAS
exec(compile(open("dataGPS.py").read(),"dataGPS.py",'exec'))

def Encabezado(Datafile):
	name = "RACIMO STORM"
	version = '2.0'
	ubicacion = readGPS.latitude() + ' ' + readGPS.dirLat() + ' ' + readGPS.longitude() + ' ' + readGPS.dirLon()
	altitud = readGPS.altitude()
	columns = "UNIXTIME, STATIC E_FIELD (V/m), TEMPERATURE (C), PRESSURE (hPa), HUMIDITY (%)"
	resolution = "E_FIELD  (JP1-> 20 V/m, JP2-> 70 V/m, JP3-> 150 V/m), TEMPERATURE (0.5 C), PRESSURE (0.18 Pa), HUMIDITY (0.008 %RH)"
	file = open(Datafile,'w')
	file.write( '# N = ' + name + '\n' + '# V = ' + version + '\n' + '# U = ' + ubicacion + '\n' + '# A = ' + altitud + '\n' + '# C = ' + columns + '\n'+ '# R = ' + resolution + '\n')
	file.write('# UNIXTIME CampoE Temperatura Presion Humedad \n')
	file.close()

def nuevoArchivo(Data_File):
        global Hrs
	Folder = "Datos/"
	tiempo = datetime.datetime.now()
	t = tiempo.timetuple()
	Anho = str(t.tm_year)
	Mes = str(t.tm_mon)
	Dia = str(t.tm_mday)
	Hora = str(t.tm_hour)
	if (int(Mes) < 10):
		Mes = '0' + Mes
	if (int(Dia) < 10):
		Dia = '0' + Dia
	if (int(Hora) < 10):
		Hora = '0' + Hora
	Min = t.tm_min
	Sec = t.tm_sec
	Hfr = t.tm_hour
	print("min= "+str(Min)+" sec= "+str(Sec))
	if Hrf != Hrs:
		Data_File = Folder + 'Datos_' + Anho + '_' + Mes + '_' + Dia + '_' +  Hora + '.txt'
		Encabezado(Data_File)
		Hrs = Hrf
	return Data_File
	
	
#Crear archivo primera vez

Folder = "Datos/"
tiempo = datetime.datetime.now()
t = tiempo.timetuple()
Anho = str(t.tm_year)
Mes = str(t.tm_mon)
Dia = str(t.tm_mday)
Hora = str(t.tm_hour)
Hrs = int(Hora)

if (int(Mes) < 10):
    Mes = '0' + Mes

if (int(Dia) < 10):
    Dia = '0' + Dia

if (int(Hora) < 10):
    Hora = '0' + Hora

Data_File = Folder + 'Datos_' + Anho + '_' + str(Mes) + '_' + str(Dia) + '_' + str(Hora) + '.txt'
if not(os.path.isfile(Data_File)):
	Encabezado(Data_File)
	




print("INICIANDO ADQUISICION")

while True:
    #Datos sensor BME
    tph = bme280.sample(bus, address, calibration_params)
    
    #-----
    
    temp = str(round(tph.temperature,2))
    hum = str(round(tph.humidity,2))
    pres = str(round(tph.pressure,2))
    
    #Datos EMILL
    
    campoE = Emill.emillValue(adress2)
    
    #Creacion del archivo de datos
    Data_File = nuevoArchivo(Data_File)
    
    #Vector GPS
    dgps = venusGPS.dataVec(portgps,baudrategps,timeoutgps)
    
    #ALMACENAMIENTO DE DATOS
    ##################
    if venusGPS.available(dgps) == "A":
        ut= int(float(venusGPS.unixTime(dgps)))
        Datos = str(ut) + ' ' + str(campoE) + ' ' + str(temp) + ' ' + str(pres) + ' ' + str(hum) + '\n'
        archivo = open(Data_File,'a')
        print (Datos)
        archivo.write(Datos)
        archivo.close()
    else:
        ut = int(round(time.time()))
        Datos = str(ut) + ' ' + str(campoE) + ' ' + str(temp) + ' ' + str(pres) + ' ' + str(hum) + '\n'
        archivo = open(Data_File,'a')
        print (Datos)
        archivo.write(Datos)
        archivo.close()
    
    time.sleep(1)
