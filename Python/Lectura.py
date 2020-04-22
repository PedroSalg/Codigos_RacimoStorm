from smbus2 import SMBus

bus = SMBus(1)

address = 0x08
reg0 = 0x00
reg1 = 0x01


#for i in range(10):
while True:
	dat0 = bus.read_byte_data(address,0x00)
#	dat1 = bus.read_byte_data(address,0x01)

#	Val = (dat0 << 8) + dat1
#	print (Val)
	print (dat0)
