
-- VHDL Instantiation Created from source file Borrado.vhd -- 20:35:34 04/05/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Borrado
	PORT(
		borrado : IN std_logic;
		A_in : IN std_logic_vector(5 downto 0);
		clk : IN std_logic;
		en_bor : IN std_logic;
		rst_bor : IN std_logic;          
		dq_bor : OUT std_logic_vector(7 downto 0);
		a_bor : OUT std_logic_vector(19 downto 0);
		ce_bor : OUT std_logic;
		oe_bor : OUT std_logic;
		we_bor : OUT std_logic;
		band_bor : OUT std_logic;
		led_bor : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_Borrado: Borrado PORT MAP(
		borrado => ,
		A_in => ,
		clk => ,
		en_bor => ,
		rst_bor => ,
		dq_bor => ,
		a_bor => ,
		ce_bor => ,
		oe_bor => ,
		we_bor => ,
		band_bor => ,
		led_bor => 
	);


