
-- VHDL Instantiation Created from source file SM.vhd -- 17:46:57 02/04/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT SM
	PORT(
		SW0 : IN std_logic;
		RST : IN std_logic;
		CLK : IN std_logic;
		EN : IN std_logic;          
		A : OUT std_logic_vector(19 downto 0);
		DQ : OUT std_logic_vector(7 downto 0);
		OE : OUT std_logic;
		CE : OUT std_logic;
		WE : OUT std_logic
		);
	END COMPONENT;

	Inst_SM: SM PORT MAP(
		SW0 => ,
		RST => ,
		CLK => ,
		EN => ,
		A => ,
		DQ => ,
		OE => ,
		CE => ,
		WE => 
	);


