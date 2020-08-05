
-- VHDL Instantiation Created from source file modulo_gps.vhd -- 23:08:17 06/10/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT modulo_gps
	PORT(
		clk : IN std_logic;
		in_pps : IN std_logic;
		reset_sis : IN std_logic;
		evento_in : IN std_logic;          
		conteo_gps : OUT std_logic_vector(26 downto 0)
		);
	END COMPONENT;

	Inst_modulo_gps: modulo_gps PORT MAP(
		clk => ,
		in_pps => ,
		reset_sis => ,
		evento_in => ,
		conteo_gps => 
	);


