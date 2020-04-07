
-- VHDL Instantiation Created from source file Contador2.vhd -- 16:51:17 04/06/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Contador2
	PORT(
		clk : IN std_logic;
		en_contador2 : IN std_logic;
		rst_contador2 : IN std_logic;          
		stop2 : OUT std_logic;
		cnt_contador2 : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;

	Inst_Contador2: Contador2 PORT MAP(
		clk => ,
		en_contador2 => ,
		rst_contador2 => ,
		stop2 => ,
		cnt_contador2 => 
	);


