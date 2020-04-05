
-- VHDL Instantiation Created from source file Lectura.vhd -- 17:30:14 04/04/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Lectura
	PORT(
		disp : IN std_logic;
		dq_in : IN std_logic_vector(7 downto 0);
		leer : IN std_logic;
		clk : IN std_logic;
		en_lec : IN std_logic;
		rst_lec : IN std_logic;          
		a_lec : OUT std_logic_vector(19 downto 0);
		oe_lec : OUT std_logic;
		ce_lec : OUT std_logic;
		we_lec : OUT std_logic;
		led_lec : OUT std_logic_vector(7 downto 0);
		en_cnt_2s : OUT std_logic
		);
	END COMPONENT;

	Inst_Lectura: Lectura PORT MAP(
		disp => ,
		dq_in => ,
		leer => ,
		clk => ,
		en_lec => ,
		rst_lec => ,
		a_lec => ,
		oe_lec => ,
		ce_lec => ,
		we_lec => ,
		led_lec => ,
		en_cnt_2s => 
	);


