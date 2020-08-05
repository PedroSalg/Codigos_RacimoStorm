
-- VHDL Instantiation Created from source file contador_gps.vhd -- 23:01:32 06/10/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT contador_gps
	PORT(
		clk : IN std_logic;
		en_cnt_gps : IN std_logic;
		rst_cnt_gps : IN std_logic;          
		gps_cnt : OUT std_logic_vector(26 downto 0)
		);
	END COMPONENT;

	Inst_contador_gps: contador_gps PORT MAP(
		clk => ,
		en_cnt_gps => ,
		rst_cnt_gps => ,
		gps_cnt => 
	);


