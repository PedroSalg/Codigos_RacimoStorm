import datetime
import time
import serial

def parceGPS(data,vecData):
    if data[0:6] == "$GPRMC":
        sdata = data.split(",")
        #-------EXTRAER DATOS----------
        unixtime = toUnix(int(sdata[9][4:6]),int(sdata[9][2:4]),int(sdata[9][0:2]),int(sdata[1][0:2]),int(sdata[1][2:4]),int(sdata[1][4:6]))
        vecData.append(str(unixtime))
        lat = decode(sdata[3]) #Latitud
        vecData.append(lat)
        dirLat = sdata[4]      #Direccion N/S
        vecData.append(dirLat)
        lon = decode(sdata[5]) #Longitud
        vecData.append(lon)
        dirLon = sdata[6]      #Direccion E/W
        vecData.append(dirLon)
        available = sdata[2]
        vecData.append(available) #Dato valido
        
    if data[0:6] == "$GPGGA":
        sdata = data.split(",")
        #--------EXTRAER DATOS---------
        alt = sdata[9] #Altitud
        vecData.append(alt)       # Comando que agrega los datos al vector
    
    return vecData

def decode(coord):
    #Convertir DDDMM.MMMM > DD deg MM.MMMMM min
    x = coord.split(".")
    head = x[0]
    tail = x[1]
    deg= head[0:-2]
    min = head[-2:]
    return deg+min+"."+tail

def toUnix(yr,mon,day,hr,min,sec):
    dt=datetime.datetime(yr,mon,day,hr,min,sec)
    unixtime=time.mktime(dt.timetuple())
    return unixtime # Convierte de UTC a UNIX

def dataVec(port,baudRate,timeOut):
    vecData=[]
    ser = serial.Serial(port,baudrate = baudRate,timeout =timeOut)
    while True:
        data = None
        while data is None:
            try:
                data = ser.readline()
            except:
                pass
        if len(vecData) != 7:
            vecData = parceGPS(data,vecData)

        else:
            if len(vecData[0]) < 7:
                vecData += [vecData.pop(0)]
            break
    return vecData

def unixTime(vecData):
    unixTime = vecData[0]
    return unixTime

def latitud(vecData):
    latitud = vecData[1]
    return latitud

def dirLat(vecData):
    dirlat = vecData[2]
    return dirlat

def longitud(vecData):
    longitud = vecData[3]
    return longitud

def dirLon(vecData):
    dirlon = vecData[4]
    return dirlon

def altitud(vecData):
    altitud = vecData[6]
    return altitud

def available(vecData):
    available = vecData[5]
    return available
    
