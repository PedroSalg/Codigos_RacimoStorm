#### ADQUISICIÓN DE LOS DATOS DEL GPS ####

# IMPORTAMOS LIBRERIAS
##########################################

import serial
import time
import datetime
import os.path
import venusGPS


# INICIALIZACIÓN
portgps = "/dev/serial0"
baudrategps = 9600
timeoutgps = 0.5
dgps = venusGPS.dataVec(portgps,baudrategps,timeoutgps)

while True:
    print("Esperando GPS.....")
    if venusGPS.available(dgps) == "A":
        #UNIX TIME
        ut= float(venusGPS.unixTime(data))
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
        if os.path.isfile(dataGPS):
            bool = True
            archivo = open(dataGPS,'a')
            archivo.write("# unixTime Latitud N/S Longitud E/W Altitud \n")
            archivo.write(Datos)
            archivo.close()
            os.system(Line)
        else:
            bool = False
            archivo = open(dataGPS,'w')
            archivo.write("# unixTime Latitud N/S Longitud E/W Altitud \n")
            archivo.write(Datos)
            archivo.close()
            os.system(Line)
