import os
import datetime
import time
#import numpy as np

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
[Tim, Lat, Lon, Estado_GPS] = Obtener_Fecha()
dtime=datetime.datetime.fromtimestamp(Tim)
t=dtime.timetuple()
print ('Datos_' + str(t.tm_year) + '_' + str(t.tm_mon) + '_' + str(t.tm_mday) + '_' +  str(t.tm_min) + '.txt')

def Name_Data_File(timepo_descarga):
	Folder = "Descargas/"
	#t = TDescarga.timetuple()
	dtime=datetime.datetime.fromtimestamp(timepo_descarga)
	print ("Entro a la funcion Name_DAta")
	t=dtime.timetuple()
	Mes = t.tm_mon
	Dia = t.tm_mday
	Hora = t.tm_hour
	Minu = t.tm_min
	#Secon = t.tm_sec
	if (Mes < 10):
		Mes = '0' + str(Mes)
		
	if (Dia < 10):
		Dia = '0' + str(Dia)
	
	if (Hora < 10):
		Hora = '0' + str(Hora)
	Data_File = Folder +  "Lighting_" + str(Mes) + '_' + str(Dia) + '_' + str(Hora) + '_' + str(Minu)+ ".dat"
	Archivo = open(Data_File,"w")
	Archivo.close()
	return (Data_File)

Nm = Name_Data_File(Tim)
print (Nm)

#print (Tim, Lat, Lon)
#print (L_Line)
#os.system(Ln2)
#Var, H = os.getenv("fil")
#os.system("line=$(tail -1 Datos/${fil})")
#print (T)
#echo $line

