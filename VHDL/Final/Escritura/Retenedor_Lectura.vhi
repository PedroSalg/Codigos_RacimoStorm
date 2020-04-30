
-- VHDL Instantiation Created from source file Retenedor_Lectura.vhd -- 08:01:59 04/27/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Retenedor_Lectura
	PORT(
		clk : IN std_logic;
		en_ret_esc : IN std_logic;
		rst_ret_esc : IN std_logic;          
		ocupado_ret : OUT std_logic
		);
	END COMPONENT;

	Inst_Retenedor_Lectura: Retenedor_Lectura PORT MAP(
		clk => ,
		en_ret_esc => ,
		rst_ret_esc => ,
		ocupado_ret => 
	);


