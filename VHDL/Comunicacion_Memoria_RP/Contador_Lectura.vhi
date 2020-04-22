
-- VHDL Instantiation Created from source file Contador_Lectura.vhd -- 21:57:55 04/21/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Contador_Lectura
	PORT(
		en_cnt_lec : IN std_logic;
		rst_cnt_lec : IN std_logic;
		clk : IN std_logic;          
		cuenta : OUT std_logic_vector(19 downto 0);
		out_cnt_lectura : OUT std_logic
		);
	END COMPONENT;

	Inst_Contador_Lectura: Contador_Lectura PORT MAP(
		en_cnt_lec => ,
		rst_cnt_lec => ,
		clk => ,
		cuenta => ,
		out_cnt_lectura => 
	);


