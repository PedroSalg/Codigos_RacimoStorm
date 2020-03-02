
-- VHDL Instantiation Created from source file SM.vhd -- 17:47:17 02/06/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT SM
	PORT(
		A_IN : IN std_logic_vector(19 downto 0);
		DQ_IN : IN std_logic_vector(7 downto 0);
		CNT : IN std_logic_vector(2 downto 0);
		CLK : IN std_logic;
		sw0 : IN std_logic;
		RST : IN std_logic;
		EN_SM : IN std_logic;          
		EN_cnt : OUT std_logic;
		A : OUT std_logic_vector(19 downto 0);
		DQ : OUT std_logic_vector(7 downto 0);
		CE : OUT std_logic;
		OE : OUT std_logic;
		WE : OUT std_logic
		);
	END COMPONENT;

	Inst_SM: SM PORT MAP(
		A_IN => ,
		DQ_IN => ,
		CNT => ,
		CLK => ,
		sw0 => ,
		RST => ,
		EN_SM => ,
		EN_cnt => ,
		A => ,
		DQ => ,
		CE => ,
		OE => ,
		WE => 
	);


