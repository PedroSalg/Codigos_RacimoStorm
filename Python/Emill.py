from smbus2 import SMBus
def emillValue(adress):
    with SMBus(1) as bus:
        block = bus.read_i2c_block_data(adress,0,4)
    lectura= (block[0] << 24) + (block[1] << 16) + (block[2] << 8) + block[3]
    return lectura
