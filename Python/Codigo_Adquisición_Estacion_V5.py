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

# INICIALIZACION 
##########################################

#-------BME280---------
address = 0x76
port = 1
bus = smbus2.SMBus(port)
calibration_params = bme280.load_calibration_params(bus, address)

#-------EMILL---------
adress2 = 0x60

#ACTUALIZAR FECHAS
#exec(compile(open("dataGPS.py").read(),"dataGPS.py",'exec'))

#######################
#CREAR ARCHIVOS DE TEXTO

Metadata = "Metadata.txt"
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

Data_File = Folder + 'Datos_' + Anho + '_' + str(Mes) + '_' + str(Dia) + '_' + str(Hora) + '.txt'
print(Data_File)

# CREACION DE ARCHIVO DE DATOS Y METADATA

archivo = open(Data_File,'w')
archivo.close()

name = "RACIMO STORM"
version = '2.0'
ubicacion = readGPS.latitude() + ' ' + readGPS.dirLat() + ' ' + readGPS.longitude() + ' ' + readGPS.dirLon()
altitud = readGPS.altitude()
columns = "UNIXTIME, LATITUD (dddmm.mmmm), N/S, LONGITUD (dddmm.mmmm), E/W, ALTITUD (m), STATIC E_FIELD (V/m), TEMPERATURE (C), PRESSURE (hPa), HUMIDITY (%)"
resolution = "E_FIELD  (JP1-> 20 V/m, JP2-> 70 V/m, JP3-> 150 V/m), TEMPERATURE (0.5 C), PRESSURE (0.18 Pa), HUMIDITY (0.008 %RH)"
    

file = open('Metadata.txt','a')
file.write( '# RACIMO STORM' + '\n' '# Name = ' + name + '\n' + '# Version = ' + version + '\n' + '# Ubication = ' + ubicacion + '\n' + '# Altitude = ' + altitud + '\n' + '# Columns = ' + columns + '\n'+ '# Resolution = ' + resolution + '\n')
file.write('# UNIXTIME CampoE Temperatura Presion Humedad \n')
file.close()
        
with open(Metadata, 'r') as F1:
    with open(Data_File, 'a') as F2:
        for line in F1:
            F2.write(line)  
F1.close()
F2.close()

#VARIABLE DE CONTEO
def getTime():
    tiempo = datetime.datetime.now()
    t = tiempo.timetuple()
    hora = t.tm_hour
    return hora
#INICIAR VARIABLE DE CONTEO
timeS = getTime()

def newTxt(Data_File,timeS): #ESTAMPA OBTENIDA CON EL GPS
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

    timeF = t.tm_hour
    if timeF != timeS:
        Data_File = Folder + 'Datos_' + Anho + '_' + Mes + '_' + Dia + '_' +  Hora + '.txt'
        with open(Metadata, 'r') as F1:
            with open(Data_File, 'a') as F2:
                for line in F1:
                    F2.write(line)
            F1.close()
            F2.close()
            timeS = getTime() 
    return Data_File

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

    #ENVIO DE DATOS
    ##################
    Data_File2 = newTxt(Data_File,timeS)
    ut = time.time()
    Datos = str(ut) + ' ' + str(campoE) + ' ' + str(temp) + ' ' + str(pres) + ' ' + str(hum) + '\n'
    archivo = open(Data_File2,'a')
    print (Datos)
    archivo.write(Datos)
    archivo.close()
    time.sleep(1)

