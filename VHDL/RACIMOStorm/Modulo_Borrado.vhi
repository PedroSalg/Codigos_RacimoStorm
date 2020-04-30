
-- VHDL Instantiation Created from source file Modulo_Borrado.vhd -- 20:35:41 04/28/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Modulo_Borrado
	PORT(
		div_frec : IN std_logic;
		borrar : IN std_logic;
		clk : IN std_logic;
		en_cnt_bor : IN std_logic;
		rst_cnt_bor : IN std_logic;          
		dq_bor : OUT std_logic_vector(11 downto 0);
		a_bor : OUT std_logic_vector(19 downto 0);
		ce_bor : OUT std_logic;
		oe_bor : OUT std_logic;
		we_bor : OUT std_logic;
		band_bor : OUT std_logic;
		led_bor : OUT std_logic_vector(7 downto 0);
		stop_cnt_bor : OUT std_logic
		);
	END COMPONENT;

	Inst_Modulo_Borrado: Modulo_Borrado PORT MAP(
		div_frec => ,
		borrar => ,
		clk => ,
		en_cnt_bor => ,
		rst_cnt_bor => ,
		dq_bor => ,
		a_bor => ,
		ce_bor => ,
		oe_bor => ,
		we_bor => ,
		band_bor => ,
		led_bor => ,
		stop_cnt_bor => 
	);


