#### ADQUISICION DE LOS DATOS DEL GPS ####

# IMPORTAMOS LIBRERIAS
##########################################

import serial
import time
import datetime
import os.path
import venusGPS


# INICIALIZACION
portgps = "/dev/serial0"
baudrategps = 9600
timeoutgps = 0.5
dgps = venusGPS.dataVec(portgps,baudrategps,timeoutgps)

# TIMEOUT
timeS = time.time()

while True:
    print("Esperando GPS: " + venusGPS.available(dgps))
    #TIEMPO TRANSCURRIDO
    timeF = time.time()
    if venusGPS.available(dgps) == "A":
        #UNIX TIME
        ut= float(venusGPS.unixTime(dgps))
        #LATITUDE
        lat = venusGPS.latitud(dgps)
        #DIR LATITUDE
        dirlat = venusGPS.dirLat(dgps)
        #LONGITUDE
        lon = venusGPS.longitud(dgps)
        #DIR LONGITUDE
        dirlon = venusGPS.dirLon(dgps)
        #ALTITUD
        alt = venusGPS.altitud(dgps)
        #ARCHIVO
        dataGPS = "datosGPS.txt"
        #DATOS
        Datos = str(ut) + ' ' +str(lat) + ' ' + str(dirlat) + ' ' + str(lon) + ' ' + str(dirlon) + ' ' + str(alt) + ' \n'
        #LINEA DE BASH PARA ACTUALIZAR FECHA
        Line = "sudo date --set @" + str(ut)
        #CREAR EL ARCHIVO
        archivo = open(dataGPS,'w')
        archivo.write("# C = UNIXTIME, LATITUD (dddmm.mmmm), N/S, LONGITUD (dddmm.mmmm), E/W, ALTITUD (m) \n")
        archivo.write("# unixTime Latitud N/S Longitud E/W Altitud \n")
        archivo.write(Datos)
        archivo.close()
        #ACTUALIZAR HORA RASPBERRY
        os.system(Line)
        
        print("datosGPS.txt y fecha de la RP ACTUALIZADO")
        break
        
    elif timeF-timeS > 3600.0:
        print("Senal de GPS invalida, no se actualizo dateGPS.txt")
        break
