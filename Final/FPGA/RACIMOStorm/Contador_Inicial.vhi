
-- VHDL Instantiation Created from source file Contador_Inicial.vhd -- 15:01:29 06/10/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Contador_Inicial
	PORT(
		en_cnt_ini : IN std_logic;
		rst_cnt_ini : IN std_logic;
		clk : IN std_logic;          
		end_cnt_ini : OUT std_logic
		);
	END COMPONENT;

	Inst_Contador_Inicial: Contador_Inicial PORT MAP(
		en_cnt_ini => ,
		rst_cnt_ini => ,
		clk => ,
		end_cnt_ini => 
	);


