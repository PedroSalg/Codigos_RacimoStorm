
-- VHDL Instantiation Created from source file Memoria_RAM.vhd -- 23:44:25 05/21/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Memoria_RAM
	PORT(
		clk : IN std_logic;
		address : IN std_logic_vector(3 downto 0);
		data_in : IN std_logic_vector(11 downto 0);
		en_ram : IN std_logic;
		wr : IN std_logic;          
		data_out : OUT std_logic_vector(11 downto 0)
		);
	END COMPONENT;

	Inst_Memoria_RAM: Memoria_RAM PORT MAP(
		clk => ,
		address => ,
		data_in => ,
		en_ram => ,
		wr => ,
		data_out => 
	);


