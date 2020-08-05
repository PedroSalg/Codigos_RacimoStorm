
-- VHDL Instantiation Created from source file cnt_memoria.vhd -- 23:43:56 05/21/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT cnt_memoria
	PORT(
		en_cnt : IN std_logic;
		rst_cnt : IN std_logic;
		suma_resta : IN std_logic;
		clk : IN std_logic;          
		cnt_out : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_cnt_memoria: cnt_memoria PORT MAP(
		en_cnt => ,
		rst_cnt => ,
		suma_resta => ,
		clk => ,
		cnt_out => 
	);


