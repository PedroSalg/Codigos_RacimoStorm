
-- VHDL Instantiation Created from source file Event_Detect.vhd -- 19:53:38 05/04/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Event_Detect
	PORT(
		D : IN std_logic_vector(11 downto 0);
		Disparo : IN std_logic;
		clk : IN std_logic;
		en_maquina : IN std_logic;
		rst_maquina : IN std_logic;
		stop : IN std_logic;          
		sw0 : OUT std_logic;
		sw1 : OUT std_logic;
		sw2 : OUT std_logic
		);
	END COMPONENT;

	Inst_Event_Detect: Event_Detect PORT MAP(
		D => ,
		Disparo => ,
		clk => ,
		en_maquina => ,
		rst_maquina => ,
		stop => ,
		sw0 => ,
		sw1 => ,
		sw2 => 
	);


