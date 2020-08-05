import os.path


def readElements():
    archivo = open("datosGPS.txt",'r')
    datos = archivo.readlines()
    elementos = datos[1].split(" ")
    return elementos

def unixTime():
    elementos = readElements()
    ut = elementos[0]
    return ut

def latitude():
    elementos = readElements()
    lat = elementos[1]
    return lat

def dirLat():
    elementos = readElements()
    dirlat = elementos[2]
    return dirlat

def longitude():
    elementos = readElements()
    lon= elementos[3]
    return lon

def dirLon():
    elementos = readElements()
    dirlon = elementos[4]
    return dirlon

def altitude():
    elementos = readElements()
    alt = elementos[5]
    return alt

