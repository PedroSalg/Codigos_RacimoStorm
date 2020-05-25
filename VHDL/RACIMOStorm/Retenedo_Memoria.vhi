
-- VHDL Instantiation Created from source file Retenedo_Memoria.vhd -- 10:10:32 05/24/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Retenedo_Memoria
	PORT(
		clk : IN std_logic;
		en_ret_mem : IN std_logic;
		rst_ret_mem : IN std_logic;          
		ocupado_mem : OUT std_logic
		);
	END COMPONENT;

	Inst_Retenedo_Memoria: Retenedo_Memoria PORT MAP(
		clk => ,
		en_ret_mem => ,
		rst_ret_mem => ,
		ocupado_mem => 
	);


