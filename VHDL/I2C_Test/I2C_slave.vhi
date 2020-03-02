
-- VHDL Instantiation Created from source file I2C_slave.vhd -- 15:01:11 01/20/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT I2C_slave
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;
		data_to_master : IN std_logic_vector(7 downto 0);    
		scl : INOUT std_logic;
		sda : INOUT std_logic;      
		read_req : OUT std_logic;
		data_valid : OUT std_logic;
		data_from_master : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_I2C_slave: I2C_slave PORT MAP(
		scl => ,
		sda => ,
		clk => ,
		rst => ,
		read_req => ,
		data_to_master => ,
		data_valid => ,
		data_from_master => 
	);


