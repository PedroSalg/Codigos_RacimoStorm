
-- VHDL Instantiation Created from source file I2C_Prueba.vhd -- 18:17:17 01/20/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT I2C_Prueba
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;       
		SCL : INOUT std_logic;
		SDA : INOUT std_logic
		);
	END COMPONENT;

	Inst_I2C_Prueba: I2C_Prueba PORT MAP(
		SCL => ,
		clk => ,
		rst => ,
		SDA => 
	);


