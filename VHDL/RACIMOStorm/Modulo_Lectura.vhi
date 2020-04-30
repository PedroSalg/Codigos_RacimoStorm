
-- VHDL Instantiation Created from source file Modulo_Lectura.vhd -- 22:30:39 04/28/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Modulo_Lectura
	PORT(
		SW0 : IN std_logic;
		CLK : IN std_logic;
		DQ : IN std_logic_vector(11 downto 0);
		RESET : IN std_logic;
		freq_out : IN std_logic;
		FROM_RP : IN std_logic;    
		SDA : INOUT std_logic;
		SCL : INOUT std_logic;      
		TO_RP : OUT std_logic;
		A : OUT std_logic_vector(19 downto 0);
		CE : OUT std_logic;
		OE : OUT std_logic;
		WE : OUT std_logic;
		LED : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_Modulo_Lectura: Modulo_Lectura PORT MAP(
		SW0 => ,
		CLK => ,
		DQ => ,
		RESET => ,
		freq_out => ,
		FROM_RP => ,
		SDA => ,
		SCL => ,
		TO_RP => ,
		A => ,
		CE => ,
		OE => ,
		WE => ,
		LED => 
	);


