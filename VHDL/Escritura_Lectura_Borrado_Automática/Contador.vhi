
-- VHDL Instantiation Created from source file Contador.vhd -- 20:36:57 04/05/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Contador
	PORT(
		clk : IN std_logic;
		en_contador : IN std_logic;
		rst_contador : IN std_logic;          
		stop : OUT std_logic;
		cnt_contador : OUT std_logic_vector(19 downto 0)
		);
	END COMPONENT;

	Inst_Contador: Contador PORT MAP(
		clk => ,
		en_contador => ,
		rst_contador => ,
		stop => ,
		cnt_contador => 
	);


