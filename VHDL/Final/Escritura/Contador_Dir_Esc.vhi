
-- VHDL Instantiation Created from source file Contador_Dir_Esc.vhd -- 08:01:36 04/27/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Contador_Dir_Esc
	PORT(
		clk : IN std_logic;
		en_cnt_dir : IN std_logic;
		rst_cnt_dir : IN std_logic;          
		ocuapdo : OUT std_logic;
		cnt_dir : OUT std_logic_vector(19 downto 0)
		);
	END COMPONENT;

	Inst_Contador_Dir_Esc: Contador_Dir_Esc PORT MAP(
		clk => ,
		en_cnt_dir => ,
		rst_cnt_dir => ,
		ocuapdo => ,
		cnt_dir => 
	);


