# CODIGO PARA REGISTRAR SOLAMENTE EL TIEMPO EN UNIX TIME EN ARCHIVOS NOMBRADOS POR HORA

# IMPORTAMOS LIBRERIAS
##########################################

import serial
import time
import datetime
import os.path
import smbus2
import bme280
import venusGPS
import Emill

# INICIALIZACION 
##########################################

#-------BME280---------
address = 0x76
port = 1
bus = smbus2.SMBus(port)
calibration_params = bme280.load_calibration_params(bus, address)

#-------VENUS GPS----------
portgps = "/dev/serial0"
baudrategps = 9600
timeoutgps = 0.5

#-------EMILL---------
adress2 = 0x60

#######################
#CREAR ARCHIVOS DE TEXTO

#------DATOS DE TIEMPO DE LA RASPBERRY COMO RESPALDO
while True:
    print("Esperando GPS.....")
    if venusGPS.available(dgps) == "A":
        Metadata = "Metadata.txt"
        Folder = "Datos/"
        ut= float(venusGPS.unixTime(data))
        dtime=datetime.datetime.fromtimestamp(ut)
        t=dtime.timetuple()
        t1= t.tm_hour 
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
        hora = int(Hora) 
        break

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

    name = "RACIMO STORM"
    version = '2.0'
    columns = "UNIXTIME, LATITUD (dddmm.mmmm), N/S, LONGITUD (dddmm.mmmm), E/W, ALTITUD (m), STATIC E_FIELD (V/m), TEMPERATURE (C), PRESSURE (hPa), HUMIDITY (%)"
    resolution = "E_FIELD  (JP1-> 20 V/m, JP2-> 70 V/m, JP3-> 150 V/m), TEMPERATURE (0.5 C), PRESSURE (0.18 Pa), HUMIDITY (0.008 %RH)"
    

    file = open('Metadata.txt','a')
    file.write( '# RACIMO STORM' + '\n' '# Name = ' + name + '\n' + '# Version = ' + version + '\n' + '# Columns = ' + columns + '\n'+ '# Resolution = ' + resolution + '\n')
    file.write('# UNIXTIME Latitud N/S Longitud E/W Altitud CampoE Temperatura Presion Humedad \n')
    file.close()
        
    with open(Metadata, 'r') as F1:
        with open(Data_File, 'a') as F2:
            for line in F1:
                F2.write(line)  
    F1.close()
    F2.close()

        
def newTxtGPS(data,Data_File,hora): #ESTAMPA OBTENIDA CON EL GPS
    ut= float(venusGPS.unixTime(data))
    dtime=datetime.datetime.fromtimestamp(ut)
    t=dtime.timetuple()
    t1= t.tm_hour 
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

    if t1 != hora:
        Data_File = Folder + 'Datos_' + Anho + '_' + Mes + '_' + Dia + '_' +  Hora + '.txt'
        with open(Metadata, 'r') as F1:
            with open(Data_File, 'a') as F2:
                for line in F1:
                    F2.write(line)
            F1.close()
            F2.close()
            hora = t.tm_hour 
    return Data_File
    
    
print("INICIANDO ADQUISICION")

while True:
    #DATOS GPS

    dgps = venusGPS.dataVec(portgps,baudrategps,timeoutgps)
    #---------
    lat = venusGPS.latitud(dgps)
    dirlat = venusGPS.dirLat(dgps)
    lon = venusGPS.longitud(dgps)
    dirlon = venusGPS.dirLon(dgps)
    alt = venusGPS.altitud(dgps)
    
    #Datos sensor BME
    tph = bme280.sample(bus, address, calibration_params)
    
    #-----
    
    temp = str(round(tph.temperature,2))
    hum = str(round(tph.humidity,2))
    pres = str(round(tph.pressure,2))
    
    #Datos EMILL
    
    campoE = Emill.emillValue(adress2)
    
    if venusGPS.available(dgps) == "A":
        Data_File2 = newTxtGPS(dgps,Data_File,hora)
        ut= float(venusGPS.unixTime(dgps))
        Datos = str(ut) + ' ' +str(lat) + ' ' + str(dirlat) + ' ' + str(lon) + ' ' + str(dirlon) + ' ' + str(alt) + ' ' + str(campoE) + ' ' + str(temp) + ' ' + str(pres) + ' ' + str(hum) + '\n'
        archivo = open(Data_File2,'a')
        print (Datos)
        archivo.write(Datos)
        archivo.close()
        dtime=datetime.datetime.fromtimestamp(ut)
        t=dtime.timetuple()
        hora = t.tm_hour
        
    
    
    