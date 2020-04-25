from smbus2 import SMBus
def emill(adress):
	with SMBus(1) as bus:
		block = bus.read_i2c_block_data(adress,0,4)
	Muestra = (block[0] << 24) + (block[1] << 16) + (block[2] <<8) + block[3] 
	lectura = Muestra*(4.7/2**20)
	return lectura
	
