
-- VHDL Instantiation Created from source file Contador_Dir_Bor.vhd -- 00:36:48 04/28/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Contador_Dir_Bor
	PORT(
		clk : IN std_logic;
		en_cnt_bor : IN std_logic;
		rst_cnt_bor : IN std_logic;          
		cnt_dir_bor : OUT std_logic_vector(5 downto 0);
		stop_cnt_bor : OUT std_logic
		);
	END COMPONENT;

	Inst_Contador_Dir_Bor: Contador_Dir_Bor PORT MAP(
		clk => ,
		en_cnt_bor => ,
		rst_cnt_bor => ,
		cnt_dir_bor => ,
		stop_cnt_bor => 
	);


