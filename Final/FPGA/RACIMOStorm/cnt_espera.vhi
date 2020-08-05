
-- VHDL Instantiation Created from source file cnt_espera.vhd -- 22:12:09 05/05/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT cnt_espera
	PORT(
		clk : IN std_logic;
		en_cnt_espera : IN std_logic;
		rst_cnt_espera : IN std_logic;          
		salida_espera : OUT std_logic
		);
	END COMPONENT;

	Inst_cnt_espera: cnt_espera PORT MAP(
		clk => ,
		en_cnt_espera => ,
		rst_cnt_espera => ,
		salida_espera => 
	);


