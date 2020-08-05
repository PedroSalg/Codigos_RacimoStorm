
-- VHDL Instantiation Created from source file Modulo_Escritura.vhd -- 20:30:02 04/28/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Modulo_Escritura
	PORT(
		clk : IN std_logic;
		en_cnt_dir : IN std_logic;
		rst_cnt_dir : IN std_logic;
		escribir : IN std_logic;
		div_frec : IN std_logic;
		dq_in_esc : IN std_logic_vector(11 downto 0);          
		stop_cnt_dir : OUT std_logic;
		a_esc : OUT std_logic_vector(19 downto 0);
		dq_esc : OUT std_logic_vector(11 downto 0);
		ce_esc : OUT std_logic;
		oe_esc : OUT std_logic;
		we_esc : OUT std_logic;
		led_esc : OUT std_logic_vector(7 downto 0);
		band_esc : OUT std_logic
		);
	END COMPONENT;

	Inst_Modulo_Escritura: Modulo_Escritura PORT MAP(
		clk => ,
		en_cnt_dir => ,
		rst_cnt_dir => ,
		escribir => ,
		div_frec => ,
		dq_in_esc => ,
		stop_cnt_dir => ,
		a_esc => ,
		dq_esc => ,
		ce_esc => ,
		oe_esc => ,
		we_esc => ,
		led_esc => ,
		band_esc => 
	);


