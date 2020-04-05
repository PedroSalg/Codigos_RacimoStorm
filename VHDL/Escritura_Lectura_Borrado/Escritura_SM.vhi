
-- VHDL Instantiation Created from source file Escritura_SM.vhd -- 17:16:34 04/04/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Escritura_SM
	PORT(
		escritura : IN std_logic;
		en_esc : IN std_logic;
		rst_esc : IN std_logic;
		clk : IN std_logic;          
		dq_esc : OUT std_logic_vector(7 downto 0);
		a_esc : OUT std_logic_vector(19 downto 0);
		ce_esc : OUT std_logic;
		oe_esc : OUT std_logic;
		we_esc : OUT std_logic;
		led_esc : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_Escritura_SM: Escritura_SM PORT MAP(
		escritura => ,
		en_esc => ,
		rst_esc => ,
		clk => ,
		dq_esc => ,
		a_esc => ,
		ce_esc => ,
		oe_esc => ,
		we_esc => ,
		led_esc => 
	);


